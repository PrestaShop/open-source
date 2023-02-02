---
title: How to release a new minor PrestaShop version
menuTitle: Releasing a new minor PS version
chapter: true
weight: 10
---

# How to release a new minor PrestaShop version

## Context

Minor versions go through the following [lifecycle][lifecycle].
- Feature freeze
- Public Beta period
- Release Candidate
- Final candidate


## Process overview

1. **[Perform feature freeze tasks][feature-freeze]**: (click to see the full step)
   
   Short summary:
   
   - **Communicate.**

   - **Create the build branch.**

   - **Create the new version in Distribution API.**  
    _To allow the Distribuion API to serve modules compatible with this new PrestaShop version._
    
   - **Update the version number in the Core.**
   
   - **Make sure the default translation catalogue has been updated and pushed to Crowdin.**  
   _To make any new wordings translatable._

   - **Create the branch for the theme.**  

2. **[During stabilization][stabilization]**: (click to see the full step)

   Short summary:

   - **Perform manual verifications.**  
   _To make sure that the project is ready to be built._
   
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

   - **Release the archive on PrestaShop.com.**

   - **Communicate.**

4. **[Final steps][final-steps]**: (click to see the full step)

   Short summary:

   - **Update API stream for 1-click upgrade.**  
     _So that the 1-Click Upgrade (autoupgrade) module becomes aware of the new release._

   - **Create Docker images for the new version.**

   - **Go through the checklist.**
     _To make sure everything went all right._

   - **Improve the process.**


[lifecycle]: https://devdocs.prestashop-project.org/8/project/release/minor-release-lifecycle/
[github-repository]: https://github.com/prestashop/prestashop
[php]: https://www.php.net/
[compatible-php-versions]: {{< devdocs "basics/installation/system-requirements.md#php-requirements" >}}
[get-composer]: https://getcomposer.org/
[nodejs]: https://nodejs.org/
[nodejs-requirements]: {{< devdocs "development/compile-assets.md#requirements" >}}

[feature-freeze]: {{< relref "feature-freeze-process.md" >}}
[create-build]: {{< relref "create-build.md" >}}
[release-publicly]: {{< relref "release-publicly.md" >}}
[final-steps]: {{< relref "final-steps.md" >}}