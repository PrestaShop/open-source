---
title: Create the build
weight: 20
aliases:
  - /maintainers-guide/releasing-prestashop/create-build/
---

## Create a build package

Once preliminary tasks have been completed, the project is ready to be built.

### 1. Merge any not yet merged security fixes into your branch

To avoid disclosing security issues before the version is released, security Pull Request are merged in GitHub _after_ the build has been validated. In order to include them in your build, you need to retrieve them manually and merge them in your local branch.

If this release includes security PRs:

- Add the different private temporary repositories for each Security Advisory as remotes of your local git repository.
- Merge each one of those PRs into your working local branch.

{{% notice warning %}}
If there are security PRs to be merged, they are fixing minor security issues. Otherwise, a security release would have been done instead.
{{% /notice %}}

### 2. Update the Changelog & Contributors list

#### Extract list of changes and contributors using the changelog tool

{{% notice warning %}}
**This step requires special rights.**

Ask a maintainer from the PrestaShop Company with access to the Changelog Tool to perform this step.
{{% /notice %}}

After this step, you should obtain two files:

- the Changelog file – including a list of all the merged Pull Requests. Make sure to keep this file, you'll need it later.
- the New Contributors file – a list of all the people who contributed code for this version for their first time.

#### Update the project's files

- Add the contents of the changelog at the top of PrestaShop's [Changelog file][changelog-file].
- Update PrestaShop's [Contributors file][contributors-file] by adding the new contributors. Keep the alphabetical order.
- Commit your changed files with following message: "// Changelog [version]"

### 3. Push your work into the build branch

{{% notice %}}
**As reminder**

Your branch following this scheme: `[version]-build` (for example: "9.0.2-build")
{{% /notice %}}

The build branch helps other people verify your work, and allows the base branch to continue receiving merges while your build is being validated.

If your build is rejected because of a bug, the fixes will have to be merged into your build branch, instead of the base branch.

#### If the branch does not contain security fixes

- Push your changes to the new build branch in the public repository.
- Create a new pull request to merge your changes. If you're lost, see [this example](https://github.com/PrestaShop/PrestaShop/pull/40227) from the 9.0.2 release.

{{% notice warning %}}
**Make sure your PR is not merged accidentally!**

The build must be validated before the PR can be merged.
{{% /notice %}}

#### If the branch contains security fixes

- Push your local branch into a private repository, in order to avoid disclosing the security bugs.
- Share access to your private repository with other maintainers so that they can verify your work.

### 4. Build the ZIP archive (OS version)

Use the [Release Creator CLI script][release-creator-readme] included with PrestaShop's sources to create the ZIP archive.

From the root path of your repository, execute:

```shell
php tools/build/CreateRelease.php --version="1.7.6.6"
```

{{% notice note %}}
Note: the version number will be the same for pre-release versions and final release versions.
{{% /notice %}}

This tool creates a build based on the state of your workspace using git archive. Therefore, files not tracked by git won't be included in the build.

**Make sure you're building from the branch you updated in the previous step.** Otherwise the package won't include the updated changelog and contributors files.

By default, the release package will create two files in a new subdirectory in `/tools/build/releases`:

- A ZIP package, containing the software.
- An XML file, containing md5 checksums for every file within the package.

{{% notice warning %}}
**Make sure to keep them both!** You will need them later on.
{{% /notice %}}

As an optional step, consider downloading the latest stable release package and compare the contents of the zip archives to look for suspicious changes.

### 5. Archive your OS version

#### Rename files

Rename both files according to our naming convention:

```text
prestashop_<version>-[beta.<beta number>|rc.<rc number>]+build.<build number>.<zip|xml>
```

{{% callout %}}

##### Examples

* `prestashop_1.7.4.0-beta.1+build.1.zip` – First build of beta 1
* `prestashop_1.7.4.0-beta.1+build.2.zip` – Second build of beta 1
* `prestashop_1.7.4.0-beta.2+build.1.zip` – First build of beta 2
* `prestashop_1.7.4.0-rc.1+build.1.zip`  – First build of RC 1
* `prestashop_1.7.4.0+build.1.zip` – First build of final version
* `prestashop_1.7.4.0+build.2.zip` – Second build of final version

For major versions, we may build a Beta Version (example: `prestashop_1.7.4.0-beta.1+build.1.zip`).

When the beta testing phase is over, we build one Release Candidate (example: `prestashop_1.7.4.0-rc.1+build.1.zip`).

For patch versions, the beta and RC phase can be skipped (example: `prestashop_1.7.4.1+build.1.zip`)
{{% /callout %}}

#### Upload files to the archive

{{% notice warning %}}
**This step requires special rights.**

Upload both ZIP and XML files to the Archive Google Drive.

{{% /notice %}}

### 6. Build a Classic Version

{{% notice warning %}}
**This notion documentation requires special rights.**

Go to [Create a Classic Edition](https://www.notion.so/prestashopcorp/Create-a-Classic-Edition-2c45d6cf071f80789babe11c1b379899) page for more information about
the internal tool **smb_edition_builder** and follow the different steps in the "Build Process for PrestaShop Classic Edition" section only.
{{% /notice %}}

### 7. Communicate and wait for QA validation

At this point, the OS build process is over.

- Make sure the build files have been submitted to the QA team.
- **Update the Release Tracker GitHub issue**. Tick the "Build" box, and add a comment to announce that the build has been submitted to QA ([see example][example-build-comment]).
- Wait for QA to validate the build.

#### If the QA rejects the build

In case the QA team finds blocking defects in the build, then these issues _must_ be fixed and merged before the branch can be built again.

- **Communicate** that the build validation has failed by updating the Release Tracker GitHub issue.
- **Fix the issues** or wait for them to be fixed and merged in the **build** branch you created above _(and **NOT** in the base branch!)_.
- **Repeat the build process from the top**. Make sure that you have checked out the head of the updated version branch.

Once the QA has greenlighted the build, you can move on to [final steps][final-steps] for publishing Classic Editon.

[changelog-file]: https://github.com/PrestaShop/PrestaShop/blob/develop/docs/CHANGELOG.txt
[contributors-file]: https://github.com/PrestaShop/PrestaShop/blob/develop/CONTRIBUTORS.md
[release-creator-readme]: https://github.com/PrestaShop/PrestaShop/blob/develop/tools/build/README.md
[example-build-comment]: https://github.com/PrestaShop/PrestaShop/issues/19959#issuecomment-651685219
[final-steps]: {{< relref "final-steps.md" >}}
