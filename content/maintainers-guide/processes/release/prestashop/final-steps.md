---
title: Final steps
weight: 40
aliases:
  - /maintainers-guide/releasing-prestashop/final-steps/
---

## Final steps

### 1. Update API stream for Update Assistant

#### 1.1 Distribution API

{{% notice note %}}
**This should only be done for stable releases.**

_(i.e. if not for betas and RCs)._
{{% /notice %}}

Additional changes must be brought to the [Distribution API repository](https://github.com/PrestaShop/distribution-api) to provide the best experience on the Update Assistant module:

- Add in the file [releaseNotes.json](https://github.com/PrestaShop/distribution-api/blob/main/resources/json/releaseNotes.json) the new version and the link to its release notes,

- Verify that the file [autoupgrade.json](https://github.com/PrestaShop/distribution-api/blob/main/public/json/autoupgrade.json) has been updated by the team in charge of autoupgrade to make the new release available for update.
If you needed to release a new version of the module Update Assistant, update the `autoupgrade_recommended` property as well.
You may have to create a new entry if the new Update Assistant is compliant with a range of PrestaShop version that is unrelated to the existing ones.

Once this step is done and your changes have been merged, update the Release Tracker GitHub issue by ticking the "Available for update" box.

{{% notice tip %}}
**Application of changes check.**

_Please verify the contents of https://api.prestashop-project.org/autoupgrade. You might need to wait for the cache to be cleared._
{{% /notice %}}

#### 1.2 Legacy API

{{% notice note %}}
**API migration in progress**

_Update Assistant is using the Distribution API since the version 7.1. But some steps still need to be performed on the old API (only available from people of PrestaShop SA with specific rights)._
{{% /notice %}}

See the internal notion page [Update API stream for 1-click upgrade][stash-api] and follow the different steps.

### 2. Deployment of the Classic edition

{{% notice warning %}}
**This notion documentation requires special rights.**

Go to [Create a Classic Edition](https://www.notion.so/prestashopcorp/Create-a-Classic-Edition-2c45d6cf071f80789babe11c1b379899) page for more information about
the internal tool **smb_edition_builder** and follow the different steps in the "Deployment" section.
{{% /notice %}}

### 3. Create Docker images for the new version

{{% notice note %}}
**This part is normally no longer necessary and is now automated.**
{{% /notice %}}

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

### 3. Go through the checklist

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

### 4. Store the ZIP archive

Submit a Pull Request to add the ZIP archive to the [Archives repository](https://github.com/PrestaShop/zip-archives).

### 5. Improve the process

If during the process you encountered issues or there was some information not 100% clear, please improve this process documentation.

{{% notice tip %}}
**Congratulations!**

The release is now complete, you can close the Release Tracker GitHub issue.
{{% /notice %}}

[docker-repository]: https://github.com/PrestaShop/docker
[stash-api]: https://www.notion.so/prestashopcorp/Update-API-stream-for-1-click-upgrade-d547202bbc814407860c134ae01b3b32
[docker-release-pr-example]: https://github.com/PrestaShop/docker/pull/287
[docker-generate-doc]: https://github.com/PrestaShop/docker/blob/master/HOW-TO-USE.md
