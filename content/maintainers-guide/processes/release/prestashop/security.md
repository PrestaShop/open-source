---
title: Security patch releases
weight: 10
---

# Security patch releases

## Context

In the past, we used to mix security fixes for major security issues and regular Pull Requests, but that made releasing new versions of PrestaShop harder. Today when there is a major security vulnerability reported, we fix it in a scoped security patch release which contain only the security fixes.

Examples: [PrestaShop 8.1.6][8.1.6] or [PrestaShop 8.1.4][8.1.4]

For regular patch releases, we start from the content of the patch branch to create a new build. For example for 8.1.x patch releases, when we decide to release a new version, we fetch the current state of 8.1.x branch.

For security patch releases instead, we fetch the latest stable version of the software. Meaning: when we decided to release the security release PrestaShop 8.1.6, we did not fetch the current state of 8.1.x branch, we fetched the 8.1.5 tag and worked from that instead.

By only bundling the changes to fix the security issue and nothing else in a release, we create a lightweight patch, easy to build, test, deploy, and easy for users to apply or upgrade.

## Process changes

The first part of the release process, ["Perform preliminary tasks"][preliminary-tasks] is then changed:

   - **Fetch the last released git tag and create a branch from it.**

   - **Set up the new version on the PrestaShop Addons Marketplace and update native modules' compatibility.**  
    
   - **Update the version number in the created branch.**

The rest of the process can be applied without changes.

The built ZIP should only contain:
- the security fixes
- the version number change
- the Changelog

[preliminary-tasks]: {{< relref "preliminary-tasks.md" >}}
[8.1.6]: https://github.com/PrestaShop/PrestaShop/compare/8.1.5...8.1.6
[8.1.4]: https://github.com/PrestaShop/PrestaShop/compare/8.1.3...8.1.4
