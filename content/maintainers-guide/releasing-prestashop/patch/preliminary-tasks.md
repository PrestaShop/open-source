---
title: Preliminary tasks
weight: 10
---

# Preliminary tasks

Before you can start your build, you must make sure that the project is ready to be built.

These actions do not have to be done on release day. They can be anticipated and done some days before.

### Target the build branch

The actions below that request to submit a Pull Request must be done against the right branch.

For example
- if the target version is PrestaShop 8.0.2, submit your Pull Requests against branch `8.0.x`
- if the target version is PrestaShop 8.1.4, submit your Pull Requests against branch `8.1.x`

In this process this branch will be called "the build branch".

## 1. Create the new version in Addons Marketplace and update native module compatibility

{{% notice warning %}}
**Only for PrestaShop 1.7.x releases.**
{{% /notice %}}

{{% notice warning %}}
**This step requires special rights.**

Ask a maintainer from the PrestaShop Company with administrative rights on the Addons Marketplace to perform this step.
{{% /notice %}}

## 2. Make sure the version number has been updated in the Core

{{% notice note %}}
**This only needs to be done once per release.**

PrestaShop does not support pre-release versioning yet. Any build of 1.7.6.0 will be identified as 1.7.6.0 regardless if the release is alpha, beta, RC or stable.
{{% /notice %}}

Check the following files in build branch and update them if necessary:

* `/install-dev/install_version.php`:

    ```php
    // update the version number below
    define('_PS_INSTALL_VERSION_', '1.7.6.2');
    ```

* `/app/AppKernel.php`:

    ```php
    // Update the version number and version components (const *VERSION and the other one, which depends for patch or minor)
    const VERSION = '1.7.6.2';
    const MAJOR_VERSION_STRING = '1.7';
    const MAJOR_VERSION = 17;
    const MINOR_VERSION = 6;
    const RELEASE_VERSION = 2;
    ```

Submit a pull request against build branch and have it merged.

{{% notice tip %}}
If you're lost, check out [this example][bump-core-version-pr-example] from the 1.7.6.6 release.

[bump-core-version-pr-example]: https://github.com/PrestaShop/PrestaShop/pull/19980
{{% /notice %}}

{{% notice tip %}}
It is possible a maintainer already updated the version numbers before: if the version numbers are already correct, you do not need to update the files.
{{% /notice %}}

## 3. Lock the theme version.

{{% notice tip %}}
You can do this step using Git or directly on GitHub on the next step.
{{% /notice %}}

The theme has been moved outside of the Core repository since version 8.0.0.

* Create git tag on the [Theme repository][theme-repository]

When a new release is built, this tag is needed to lock the theme version.

The tag must be created from the branch dedicated to the Core version. For example
- branch `2.0.x` of the theme contains changes made for branch `8.0.x` of the Core
- branch `2.1.x` of the theme contains changes made for branch `8.1.x` of the Core

Choose the right Theme build branch that matches the Core build branch.

- [Tag][git-tag] the new version using latest commit of Theme build branch:
    ```bash
    git tag 2.0.8 # replace with your version
    ```
- Push the tag:
    ```bash
    git push 2.0.8 # replace with your version
    ```

* Update the Core `composer.lock` on target build branch to target the new tag: this will lock the version of the theme used in the Core.


## 4. Manual verifications

Make sure that in the build branch:

* All license headers are correct:
  
  ```bash
  php bin/console prestashop:licenses:update
  ```
  
* All controllers are secured by annotations, and legacy link are provided for Symfony routes:
  
  ```bash
  php bin/console prestashop:linter:security-annotation
  php bin/console prestashop:linter:legacy-link
  ```
  
* There are no known vulnerabilities in composer dependencies using [Fabpot Local PHP Security Checker][security-checker]. Consider using [this][security-checker-installer] if installing Fabpot Security Checker proves troublesome.

* All new hooks have been [registered][register-new-hook]

* The generated [FOS JSON routing][fos-js-routing] file is up-to-date:
  
  ```bash
  php bin/console fos:js-routing:dump \
      --format=json \
      --target=admin-dev/themes/new-theme/js/fos_js_routes.json
  ```

* Any new native modules have been added into `composer.json` and their latest versions have been updated in `composer.lock`:
  
  ```bash
  composer outdated -D "prestashop/*"
  ```
    
* [Nightly builds][nightly-build-board] are green


{{% notice warning %}}
If any of above verifications fails, it MUST be addressed in a Pull Requests and merged before moving forward.
{{% /notice %}}

[security-checker]: https://github.com/fabpot/local-php-security-checker
[register-new-hook]: {{< devdocs "development/components/hook/register-new-hook/" >}}
[fos-js-routing]: https://github.com/FriendsOfSymfony/FOSJsRoutingBundle
[how-to-build-assets]: {{< devdocs "development/compile-assets/" >}}
[nightly-build-board]: https://nightly.prestashop.com/
[security-checker-installer]: https://github.com/thislg/local-php-security-checker-installer
[git-tag]: https://git-scm.com/book/en/v2/Git-Basics-Tagging
[theme-repository]: https://github.com/prestashop/classic-theme

