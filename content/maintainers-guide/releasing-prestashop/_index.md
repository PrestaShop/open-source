---
title: How to release a new PrestaShop version
menuTitle: Releasing a new PS version
chapter: true
weight: 40
---

# How to release a new PrestaShop version

This section describes the release process, step by step. A PrestaShop version release requires all these steps to be completed.

## Prerequisites

To perform the process, you will need the following:

- [Git][git-scm], so you can clone [the project's Git repository][github-repository] on your computer.
- The [PHP CLI][php] executable (within the [compatible version range][compatible-php-versions] of the PrestaShop version you will be building), so you can create a build.
- The [Composer][get-composer] executable, to fetch PHP dependencies.
- The [NodeJs CLI][nodejs] executable (within the [compatible version range][nodejs-requirements]) and NPM, to compile assets.

{{% notice note %}}
Some of steps will require special tools or access rights which are currently not accessible for maintainers outside the PrestaShop Company. A notice indicates when this is the case.
{{% /notice %}}

## Types of releases

{{% children /%}}


[git-scm]: https://git-scm.com/
[github-repository]: https://github.com/prestashop/prestashop
[php]: https://www.php.net/
[compatible-php-versions]: {{< devdocs "basics/installation/system-requirements.md#php-requirements" >}}
[get-composer]: https://getcomposer.org/
[nodejs]: https://nodejs.org/
[nodejs-requirements]: {{< devdocs "development/compile-assets.md#requirements" >}}

