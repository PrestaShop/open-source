---
title: Final steps
weight: 40
---

# Final steps

## 1. Update API stream for 1-click upgrade

{{% notice note %}}
**This should only be done for stable releases.**

_(i.e. if not for betas and RCs)._
{{% /notice %}}

{{% notice warning %}}
**This step requires special rights.**

Ask a maintainer from the PrestaShop Company with administrative rights on the PrestaShop API repository to perform this step.
{{% /notice %}}

Once this step is done, update the Release Tracker GitHub issue by ticking the "Available for upgrade" box.

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

* Check the PrestaShop API content for auto-upgrade module is correct:
   
   - [channel.xml](https://api.prestashop.com/xml/channel.xml)
   - [channel17.xml](https://api.prestashop.com/xml/channel17.xml)
   - [1.7.6.0.xml](https://api.prestashop.com/xml/md5/1.7.6.0.xml) (replace with the version you have just released)

* Check the PrestaShop localization packs are correct (only needed for major and minor releases):

   - [Repository](https://github.com/PrestaShop/TranslationFiles/tree/master/1.7/translations/)
   - [Example download link](http://i18n.prestashop.com/translations/1.7.6.0/es-ES/es-ES.zip) (replace 1.7.6.0 with the version you just released)

* Check the Addons API content for fresh installs is correct (replace 1.7.6.0 with the version you just released):
   
    - [Native modules](http://api-addons.prestashop.com?format=json&iso_lang=en&iso_code=FR&version=1.7.6.0&method=listing&action=native)
    - [Pushed modules](http://api-addons.prestashop.com?format=json&iso_lang=en&iso_code=FR&version=1.7.6.0&method=listing&action=install-modules)

* Check the new release can be downloaded from the prestashop.com website and GitHub:

    - [GitHub releases](https://github.com/PrestaShop/PrestaShop/releases)
    - [PrestaShop.com archives](https://www.prestashop.com/en/previous-versions)

* Check that if you try to install PrestaShop 1.7.5 from the archive, the installer suggests you install the latest version instead
* Check that the release note has been published on the [Build Blog](http://build.prestashop.com)
* Check that the [PrestaShop.com](https://www.prestashop.com) shows the right "latest version", and the links are correct
* Check that the latest release has an available docker image on the [Docker repository][docker-repository]
* Check that the [public demo](https://demo.prestashop.com) runs on the latest version (a few hours after the docker image release)

## 4. Improve the process

If during the process you encountered issues or there was some information not 100% clear, please improve this process documentation.


{{% notice tip %}}
**Congratulations!**

The release is now complete, you can close the Relese Tracker GitHub issue.
{{% /notice %}}

[docker-repository]: https://github.com/PrestaShop/docker
[docker-hub-prestashop]: https://hub.docker.com/r/prestashop/prestashop/
[docker-release-pr-example]: https://github.com/PrestaShop/docker/pull/287
[docker-generate-doc]: https://github.com/PrestaShop/docker/blob/master/HOW-TO-USE.md
