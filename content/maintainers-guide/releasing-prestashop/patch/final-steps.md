---
title: Final steps
weight: 40
---

# Final steps

## 1. Update API stream for 1-click upgrade

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

* Check the Distribution API content is correct:

   - [Releases informations](https://api.prestashop-project.org/prestashop)
   - [Modules informations](https://api.prestashop-project.org/modules/8.0.1) (replace 8.0.1 with the version you have just released)

* Check the PrestaShop API content for auto-upgrade module is correct:
   
   - [channel.xml](https://api.prestashop.com/xml/channel.xml)
   - [8.0.1.xml](https://api.prestashop.com/xml/md5/8.0.1.xml) (replace with the version you have just released)

* Check the new release can be downloaded from GitHub:

    - [GitHub releases](https://github.com/PrestaShop/PrestaShop/releases)

* Check that the release note has been published on the [Build Blog](https://build.prestashop-project.org)
* Check that the latest release has an available docker image on the [Docker repository][docker-repository]

## 4. Improve the process

If during the process you encountered issues or there was some information not 100% clear, please improve this process documentation.

## 4. Close release items


**Congratulations!**

The release is now complete, you can close the Release Tracker GitHub issue and the milestone.

Consider creating the Release Tracker GitHub issue for the next patch version if it is already planned.

[docker-repository]: https://github.com/PrestaShop/docker
[docker-hub-prestashop]: https://hub.docker.com/r/prestashop/prestashop/
[docker-release-pr-example]: https://github.com/PrestaShop/docker/pull/287
[docker-generate-doc]: https://github.com/PrestaShop/docker/blob/master/HOW-TO-USE.md
