---
title: Preliminary tasks
url: guida-dei-maintainer/rilascio-nuova-versione-prestashop/tasks-preliminari
slug: tasks-preliminari
weight: 10
---

# Preliminary tasks

Before you can start your build, you must make sure that the project is ready to be built.

## 1. Create the new version in Addons Marketplace and update native module compatibility

{{% notice warning %}}
**This step requires special rights.**

Ask a maintainer from the PrestaShop Company with administrative rights on the Addons Marketplace to perform this step.
{{% /notice %}}

{{% notice note %}}
**This only needs to be done once per release.**

_(i.e. if done for a beta, it doesn't need to be performed again for the final release)._
{{% /notice %}}

## 2. Make sure the version number has been updated in the Core

{{% notice note %}}
**This only needs to be done once per release.**

PrestaShop does not support pre-release versioning yet. Any build of 1.7.6.0 will be identified as 1.7.6.0 regardless if the release is alpha, beta, RC or stable.
{{% /notice %}}

Check the following files and update them if necessary:

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

Make a pull request and have it merged.

{{% notice tip %}}
If you're lost, check out [this example][bump-core-version-pr-example] from the 1.7.6.6 release.

[bump-core-version-pr-example]: https://github.com/PrestaShop/PrestaShop/pull/19980
{{% /notice %}}

## 3. Make sure the default translation catalogue has been updated and pushed to Crowdin

{{% notice warning %}}
**This step requires special rights.**

Ask a maintainer from the PrestaShop Company with access to the Translation Tool to perform this step.
{{% /notice %}}

{{% notice note %}}
**This step is only needed for minor and major releases.**

It is usually only done once per release as well.
{{% /notice %}}

## 4. Manual verifications

Make sure that in the current branch:

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

* _(Minor and major releases only)_ – No important `@todo` annotations have been left forgotten in new code

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
