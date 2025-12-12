---
title: Preliminary tasks
weight: 10
aliases:
  - /maintainers-guide/releasing-prestashop/preliminary-tasks/
---

## Preliminary tasks

Before you can start your build, you must make sure that the project is ready to be built.

### 1. Communicate

Starting this step means that the Development phase of this release is over (freeze step):

Verify that the release milestone on github is 100% complete. If there are still PRs remaining, create the milestone for an another release and tag the remaining PRs to it.

Inform the @prestashop/committers about the release tracking issue.
If discussions arise regarding critical bugs, inform QA and the PM. They will be responsible for assessing the criticality of the bugs.

Inform the team in charge of Autoupgrade, and ask them if a version update is necessary (PRs with the tag "Needs Autoupgrade PR").

Before you go further, make sure to **tick the "Development" box** in the Release Tracker GitHub issue (there is one per version, see the [1.7.6.6 example][release-tracker-issue]).

### 2. Create a branch for your build

The following tasks will require you to perform changes and submit them as a Pull Request.

example : If the release is `9.0.2`, create a branch from `9.0.x` and name it `9.0.2-build`

* **Clone the project** on your computer using Git (only if you don't already have a local copy of the repository).

    ```shell
    git clone git@github.com:PrestaShop/PrestaShop.git
    ```

* **Make sure that you switch to the appropriate branch** regarding the version you'll be building

* **Make sure your branch is up-to-date with upstream.** Especially if you already had a local clone of the repository.

The next steps and PRs to be performed will be done on the build branch (freeze).

NB : **For a minor or major version** see additionnal steps on [create version branch][create-version-branch] page.

### 3. Make sure the version number has been updated in the Core

{{% notice note %}}
**This only needs to be done once per release.**

PrestaShop does not support pre-release versioning yet. Any build of 1.7.6.0 will be identified as 1.7.6.0 regardless of whether the release is alpha, beta, RC, or stable.
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

Be careful: changing the version number impacts UI tests. To allow UI tests to run, you need to update the Distribution API to acknowledge the new version even though it does not exist yet. To do so, submit a PR similar to [this example][pr-bump-dist-api].

{{% notice tip %}}
If you're lost, check out [this example][bump-core-version-pr-example] from the 1.7.6.6 release.

[bump-core-version-pr-example]: https://github.com/PrestaShop/PrestaShop/pull/19980
{{% /notice %}}

### 4. Make sure the default translation catalogue has been updated and pushed to Crowdin

{{% notice warning %}}
**This step requires special rights.**

Ask a maintainer from the PrestaShop Company with access to the Translation Tool to perform this step.
{{% /notice %}}

1. [Use the Github Action to extract wordings from the TranslationTool repository](<https://github.com/PrestaShopCorp/TranslationTool/actions/workflows/create-default-catalog-pr.yml>). This command will automatically generates a Pull Request on the PrestaShop/PrestaShop repository (author should be jarvis). It is important to note that this PR must be reviewed by a member of the content team.
   <https://github.com/PrestaShopCorp/TranslationTool> is PRIVATE, and then you need special access rights to use it.

2. Access the Crowdin interface and validate any new translations (they can be found either in the PrestaShop CORE, a module, or in the directory /mails of the PrestaShop CORE).

3. If the correction occurs in a module, a release must be made, along with a bump in the composer.json of the CORE, before re-extracting.

4. If the wording to be corrected is found in `/mails/themes/modern`, you should first correct it in <https://github.com/PrestaShop/mjml-theme-converter> and the mail templates in the PrestaShop CORE should also be regenerated (using <https://github.com/PrestaShop/mjml-theme-converter> ).

5. Once all the wordings have been corrected, validated and merged, [a Github Action can be used on the TranslationTool repository](https://github.com/PrestaShopCorp/TranslationTool/actions/workflows/push_catalog_to_crowdin.yml) to push the catalogs to Crowdin (the repository need right access).

### 5. Lock the theme version

{{% notice tip %}}
You can do this step using Git or directly on GitHub in the next step.
{{% /notice %}}

The theme has been moved outside of the Core repository since version 8.0.0.

* Create a git tag on the Theme repository

This tag is needed to lock the theme version when a new release is built.

* [Tag][git-tag] the new version:

    ```bash
    git tag 2.0.0-rc1 # replace with your version
    ```

* Push the tag:

    ```bash
    git push 2.0.0-rc1 # replace with your version
    ```

* Update `composer.lock` to target the new tag

### 6. Release any necessary improvement on the Update Assistant module

{{% notice notes %}}

Ask the team in charge of the Autoupgrade module
{{% /notice %}}

Some releases need an update of the [Update Assistant][autoupgrade] module, and some do not. For example, if the MySQL database schema has been updated between two versions of PrestaShop, a schema update SQL script is needed, and it has to be added to the [list][autoupgrade-sql-list].

Please verify whether or not this new version of PrestaShop requires

* to modify the source code of the Update Assistant (autoupgrade) module
* to publish a new version (using the up-to-date content of the source code) of the Update Assistant (autoupgrade) module

If yes, please follow [the release process of the Update Assistant module][autoupgrade-release-process].

### 7. Manual verifications

Make sure that in the current branch:

* All license headers are correct:
  
  ```bash
  php bin/console prestashop:licenses:update
  ```

* All controllers are secured by annotations, and legacy link are provided for Symfony routes (starting from 9.0.x this step is obsolete as it is checked in the CI already):

  ```bash
  php bin/console prestashop:linter:security-annotation find-missing
  php bin/console prestashop:linter:legacy-link
  ```

* All versions of the composer packages correspond to a release tag and not a development branch tag.

  ```text
  "prestashop/ps_apiresources": "dev-dev", // incorrect tag
  ```

* There are no known vulnerabilities in composer dependencies using `composer audit` to check vulnerabilities.

{{% notice warning %}}
This repository is now archived. Use composer audit instead
{{% /notice %}}
  
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

### 8. Create the new version in the PrestaShop Marketplace and update native module compatibility

{{% notice warning %}}
**This step requires special rights ([doc to create a new version on PrestaShop Marketplace](https://www.notion.so/prestashopcorp/Create-the-new-version-in-the-Addons-Marketplace-update-module-compatibility-c665ab0777204e2d95ce6df22b140747)).**

Ask a maintainer from the PrestaShop Company with administrative rights on the PrestaShop Marketplace to perform this step.
{{% /notice %}}

{{% notice note %}}
**This only needs to be done once per release.**

_(i.e. if done for a beta, it doesn't need to be performed again for the final release)._
{{% /notice %}}

{{% notice warning %}}
If any of above verifications fails, it MUST be addressed in a Pull Requests and merged before moving forward.
{{% /notice %}}

The preliminary steps are completed, you can now proceed to the [build steps][create-build].

[create-version-branch]: {{< relref "create-version-branch.md" >}}
[release-tracker-issue]: https://github.com/PrestaShop/PrestaShop/issues/19959
[register-new-hook]: {{< devdocs "development/components/hook/register-new-hook/" >}}
[fos-js-routing]: <https://github.com/FriendsOfSymfony/FOSJsRoutingBundle>
[how-to-build-assets]: {{< devdocs "development/compile-assets/" >}}
[nightly-build-board]: <https://nightly.prestashop-project.org/>
[security-checker-installer]: <https://github.com/thislg/local-php-security-checker-installer>
[git-tag]: <https://git-scm.com/book/en/v2/Git-Basics-Tagging>
[pr-bump-dist-api]: <https://github.com/PrestaShop/distribution-api/pull/36>
[autoupgrade]: <https://github.com/PrestaShop/autoupgrade/>
[autoupgrade-sql-list]: <https://github.com/PrestaShop/autoupgrade/tree/dev/upgrade/sql>
[autoupgrade-release-process]: {{< relref "../autoupgrade.md" >}}
[create-build]: {{< relref "create-build.md" >}}
