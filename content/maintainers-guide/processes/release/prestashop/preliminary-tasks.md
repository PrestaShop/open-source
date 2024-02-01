---
title: Preliminary tasks
weight: 10
aliases:
  - /maintainers-guide/releasing-prestashop/preliminary-tasks/
---

# Preliminary tasks

Before you can start your build, you must make sure that the project is ready to be built.

## 1. Create the new version in Addons Marketplace and update native module compatibility

{{% notice warning %}}
**This step requires special rights ([doc to create a new version on Addons](https://www.notion.so/prestashopcorp/Create-the-new-version-in-the-Addons-Marketplace-update-module-compatibility-4aae19abe5b641f9a77e904cd913e50a?pvs=4)).**

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

Be careful: changing the version number has impacts on UI tests. You need to update the Distribution API to acknowledge the new version even though it does not exist yet, to allow UI tests to run. Submit a PR similar to [this example][pr-bump-dist-api] to do so.

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

1. [Use the command to extract wordings from the TranslationTool repository](https://github.com/PrestaShopCorp/TranslationTool/actions/workflows/create-default-catalog-pr.yml). This command will automatically generates a Pull Request on the PrestaShop/PrestaShop repository (author should be jarvis). It is important to note that this PR must be reviewed by a member of the content team.
   https://github.com/PrestaShopCorp/TranslationTool is PRIVATE, and then you need a special right access to use it.

3. If the team content member requests wording corrections, they can be found either in the Prestashop CORE, a module or in the directory /mails of the Prestashop CORE.

4. If the correction occurs in a module, a release must be made, along with a bump in the composer.json of the CORE, before re-extracting.

5. If the wording to be corrected is found in /mails/themes/modern, you should first correct it in https://github.com/PrestaShop/mjml-theme-converter and the mail templates in the Prestashop CORE should also be regenerated (using https://github.com/PrestaShop/mjml-theme-converter ).

6. Once all the wordings have been corrected, validated and merged, [a Github Action can be used on the TranslationTool repository](https://github.com/PrestaShopCorp/TranslationTool/actions/workflows/push_catalog_to_crowdin.yml) to push the catalogs to Crowdin (the repository need right access).

## 4. Lock the theme version.

{{% notice tip %}}
You can do this step using Git or directly on GitHub on the next step.
{{% /notice %}}

The theme has been moved outside of the Core repository since version 8.0.0.

* Create git tag on the Theme repository

When a new release is built, this tag is needed to lock the theme version.

- [Tag][git-tag] the new version:
    ```bash
    git tag 2.0.0-rc1 # replace with your version
    ```
- Push the tag:
    ```bash
    git push 2.0.0-rc1 # replace with your version
    ```

* Update `composer.lock` to target the new tag


## 5. Manual verifications

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
[nightly-build-board]: https://nightly.prestashop-project.org/
[security-checker-installer]: https://github.com/thislg/local-php-security-checker-installer
[git-tag]: https://git-scm.com/book/en/v2/Git-Basics-Tagging
[pr-bump-dist-api]: https://github.com/PrestaShop/distribution-api/pull/36
