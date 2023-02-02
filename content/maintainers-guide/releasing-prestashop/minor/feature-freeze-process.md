---
title: Feature freeze process
weight: 10
---

# Feature freeze process

On the day of feature freeze (and the days after, this process can take multiple days).

## 1. Communicate

Starting this step means that the Development phase of this release is over. 

Before you go further, make sure to **tick the "Development" box** in the Release Tracker GitHub issue (there is one per version, see the [8.1.0 example][release-tracker-issue]).

## 2. Create the build branch

* Create a git branch on the Core from `develop` branch.

It will carry the work to be done until the final release. In this process it will be called "the build branch".

It is named after the target release, for example:
- if the target version is PrestaShop 8.1.0, branch name should be `8.1.x`
- if the target version is PrestaShop 9.2.0, branch name should be `9.2.x`

{{% notice note %}}
This is the branch where all future patch versions for this minor version will be developed on (hence the .x at the end).
{{% /notice %}}

Push this branch to the upstream Core repository.

{{% notice warning %}}
Write access to GitHub Core repository is needed to push branches.
{{% /notice %}}

All actions below that request to submit a Pull Request must be done against this new branch.

### Register the new branch

Following the creation of this new branch, update the following files to acknowledge the new branch:
- [The Nightly builds][nightly-build]
- [The Pull Request template][pr-template]

## 3. Create the new version in Distribution API

We don't know how to do it yet :D :D :D

## 4. Make sure the version number has been updated in the Core for the minor version

{{% notice note %}}
**This only needs to be done once per release.**

PrestaShop does not support pre-release versioning yet. Any build of 1.7.6.0 will be identified as 1.7.6.0 regardless if the release is alpha, beta, RC or stable.
{{% /notice %}}

Check the following files on build branch and update them if necessary:

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

Make a pull request against build branch and have it merged.

{{% notice tip %}}
If you're lost, check out [this example][bump-core-version-pr-example] from the 1.7.6.6 release.

[bump-core-version-pr-example]: https://github.com/PrestaShop/PrestaShop/pull/19980
{{% /notice %}}

{{% notice tip %}}
It is possible a maintainer already updated the version numbers before: if the version numbers are already correct, you do not need to update the files.
{{% /notice %}}

### Make sure the version number has been updated in the Core for on `develop` branch

You can perform the same operation above, but on `develop` for the next version.

## 5. Make sure the default translation catalogue has been updated and pushed to Crowdin

{{% notice warning %}}
**This step requires special rights.**

Ask a maintainer from the PrestaShop Company with access to the Translation Tool to perform this step.
{{% /notice %}}

{{% notice note %}}
It is usually only done once per release as well. It is possible a maintainer already updated the catalog before: if the catalog already exists in Crowdin, you do not need to updated it.
{{% /notice %}}

## 6. Create the branch for the [Theme][theme-repository]

The theme has been moved outside of the Core repository since version 8.0.0.

* Similarly to the Core branch, create a git branch on the [Theme repository][theme-repository] from `develop` branch.

It will carry the work to be done on the theme until the final release.

It is named after the target release, for example:
- if the target version is Theme 2.1.0, branch name should be `2.1.x`
- if the target version is Theme 2.2.0, branch name should be `2.2.x`

{{% notice note %}}
This is the branch where all future Theme bug fixes for this Core minor version will be developed on (hence the .x at the end).
{{% /notice %}}

Push this branch to the upstream [Theme repository][theme-repository].

{{% notice warning %}}
Write access to GitHub Core repository is needed to push branches.
{{% /notice %}}

* Update the Core `composer.lock` on the build branch to target the new Theme build branch

{{% notice tip %}}
If you're lost, check out [this example][bump-theme-version-pr-example] from the 8.1.0 release.

[bump-theme-version-pr-example]: https://github.com/PrestaShop/PrestaShop/pull/31163
{{% /notice %}}

{{% notice warning %}}
If any of above verifications fails, it MUST be addressed in a Pull Requests and merged before moving forward.
{{% /notice %}}

[release-tracker-issue]: https://github.com/PrestaShop/PrestaShop/issues/30719
[theme-repository]: https://github.com/prestashop/classic-theme
[nightly-build]: https://github.com/PrestaShop/PrestaShop/pull/31165
[pr-template]: https://github.com/PrestaShop/PrestaShop/pull/31167

