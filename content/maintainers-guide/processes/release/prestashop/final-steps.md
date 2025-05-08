---
title: Final steps
weight: 40
aliases:
  - /maintainers-guide/releasing-prestashop/final-steps/
---

# Final steps

## 1. Update API stream for Update Assistant

{{% notice note %}}
**This should only be done for stable releases.**

_(i.e. if not for betas and RCs)._
{{% /notice %}}

Additional changes must be brought to the [Distribution API repository](https://github.com/PrestaShop/distribution-api) 
to provide the best experience on the Update Assistant module:

- Add in the file [releaseNotes.json](https://github.com/PrestaShop/distribution-api/blob/main/resources/json/releaseNotes.json) the new version and the link to its release notes,
- Update the file [autoupgrade.json](https://github.com/PrestaShop/distribution-api/blob/main/public/json/autoupgrade.json) to make the new release available for update.
If you needed to release a new version of the module Update Assistant, update the `autoupgrade_recommended` property as well.
You may have to create a new entry if the new Update Assistant is compliant with a range of PrestaShop version that is unrelated to the existing ones.

Once this step is done, update the Release Tracker GitHub issue by ticking the "Available for upgrade" box.

{{% notice tip %}}
**Application of changes check.**

_Please verify the contents of https://api.prestashop-project.org/autoupgrade. You might need to wait for the cache to be cleared._
{{% /notice %}}

{{% notice note %}}
**API migration.**

_Update Assistant is using the Distribution API since the version 7.1. Before that, it was using an API only available from people of PrestaShop SA with specific rights._
{{% /notice %}}

## 2. Create Docker images for the new version

* Checkout the [project][docker-repository], install the project and create a new branch
* Modify the file `versions.py` to add the new version and the related php matrix compatibility
* Commit these changes
* Run `prestashop_docker.py generate` to generate the new Dockerfiles in the folder `images/` (See [documentation][docker-generate-doc])
* Commit these changes
* Push to your fork or the original repository, create a PR and wait for the tests to pass before merging (see this [example][docker-release-pr-example])
* Once the PR has been merged, a GitHub Action will publish the new images on Docker

Some other registries depend on this registry to be updated (like [Docker internal images](https://hub.docker.com/r/prestashop/docker-internal-images)). The update will be automatic.

It may take a few hours for the images to be updated.

You can update the Release Tracker GitHub issue: step "Docker image" is done.

## 3. Go through the checklist

* Check the PrestaShop localization packs are correct (only needed for major and minor releases):

   - [Repository](https://github.com/PrestaShop/TranslationFiles/tree/master/1.7/translations/)
   - [Example download link](https://i18n.prestashop-project.org/translations/8.1.0/es-ES/es-ES.zip) (replace 8.1.1 with the version you just released)
 
* Check the Distribution API content for fresh installs is correct:
   
    - https://api.prestashop-project.org/prestashop features the latest release and its details are correct,
    - https://api.prestashop-project.org/assets/prestashop/8.1.1/prestashop.xml lists the archive contents with the checksum of each file in it (replace 8.1.1 with the version you just released),
    - https://api.prestashop-project.org/modules/8.1.1 features the right modules, and informations are correct (replace 8.1.1 with the version you just released),
    - https://api.prestashop-project.org/autoupgrade shows the release among one or several compatibility range of Update Assistant (provided you allow updates to this version). 
* Check that the release note has been published on the [Build Blog](https://build.prestashop-project.org)
* Check that the latest release has an available docker image on the [Docker repository][docker-repository]
* For 1.7.x releases, check the Addons API content for fresh installs is correct (replace 1.7.6.0 with the version you just released):
   
    - [Native modules](http://api-addons.prestashop.com?format=json&iso_lang=en&iso_code=FR&version=1.7.6.0&method=listing&action=native)
    - [Pushed modules](http://api-addons.prestashop.com?format=json&iso_lang=en&iso_code=FR&version=1.7.6.0&method=listing&action=install-modules)

* Check that if you try to install PrestaShop 1.7.5 from the archive, the installer suggests you install the latest version instead

## 4. Store the ZIP archive

Submit a Pull Request to add the ZIP archive to the [Archives repository](https://github.com/PrestaShop/zip-archives).

## 5. Improve the process

If during the process you encountered issues or there was some information not 100% clear, please improve this process documentation.


{{% notice tip %}}
**Congratulations!**

The release is now complete, you can close the Release Tracker GitHub issue.
{{% /notice %}}

[docker-repository]: https://github.com/PrestaShop/docker
[docker-hub-prestashop]: https://hub.docker.com/r/prestashop/prestashop/
[docker-release-pr-example]: https://github.com/PrestaShop/docker/pull/287
[docker-generate-doc]: https://github.com/PrestaShop/docker/blob/master/HOW-TO-USE.md
