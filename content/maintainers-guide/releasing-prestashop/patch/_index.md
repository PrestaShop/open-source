---
title: How to release a new patch PrestaShop version
menuTitle: Releasing a new patch PS version
chapter: true
weight: 10
---

# How to release a new patch PrestaShop version

## Context

Patch versions contain bug fixes and security patches.

Patch releases are usually straighforward and do no need
- feature freeze
- beta period
- release candidates

The following process can be started on Build day.

## Process overview

1. **[Perform preliminary tasks][preliminary-tasks]**: (click to see the full step)
   
   Short summary:
   
   - **Set up the new version on the PrestaShop Addons Marketplace and update native modules' compatibility.**  
    _To allow the PrestaShop Addons Marketplace and its API to serve modules compatible with this new PrestaShop version._
    
   - **Update the version number in the Core.**
   
   - **Lock the theme version.**  
    
   - **Perform manual verifications.**  
   _To make sure that the project is ready to be built._

2. **[Create a new build][create-build]**: (click to see the full step)

   Short summary:
   
   - **Communicate.**

   - **Create a local branch for your build.**

   - **Merge security PRs locally.**  
     _Any security PRs must be merged on a local branch before making them public._

   - **Update the Changelog and Contributors list.**  
     _These files must be included in the build._
   
   - **Build the zip archive and store it.**  
     _The ZIP archive contains the software (including third party dependencies) and compiled assets (Javascript and CSS), but not the development sources, dev dependencies & tests._

   - **Communicate.**

3. **[Release the version publicly][release-publicly]**: (click to see the full step)

   Short summary:

   - **Merge security PRs on GitHub.**  
     _And publish the security advisories._

   - **Merge the updated Changelog and Contributors list on GitHub.**
   
   - **Tag the version using Git and publish the release on GitHub.**

   - **Communicate.**

4. **[Final steps][final-steps]**: (click to see the full step)

   Short summary:

   - **Update API stream for 1-click upgrade.**  
     _So that the 1-Click Upgrade (autoupgrade) module becomes aware of the new release._

   - **Create Docker images for the new version.**

   - **Go through the checklist.**
     _To make sure everything went all right._

   - **Improve the process.**


[github-repository]: https://github.com/prestashop/prestashop
[php]: https://www.php.net/
[compatible-php-versions]: {{< devdocs "basics/installation/system-requirements.md#php-requirements" >}}
[get-composer]: https://getcomposer.org/
[nodejs]: https://nodejs.org/
[nodejs-requirements]: {{< devdocs "development/compile-assets.md#requirements" >}}

[preliminary-tasks]: {{< relref "preliminary-tasks.md" >}}
[create-build]: {{< relref "create-build.md" >}}
[release-publicly]: {{< relref "release-publicly.md" >}}
[final-steps]: {{< relref "final-steps.md" >}}