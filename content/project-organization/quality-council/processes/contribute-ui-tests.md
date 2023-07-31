---
title: How to contribute to UI tests
---

# How to contribute to UI tests

## Introduction

### Branches

The first question to ask when making a contribution is "Which branch should I target?".

The rules are as follows:
* The development branch for UI testing is the current development branch.
* The branch changes as soon as the final release is out.

### Differences between scenarios & tests

Scenarios are the base of UI Tests. They are available on the [PrestaShop Tests Documentation](https://build.prestashop-project.org/test-scenarios/).

Tests are the code after scenarios. They are available on the main repository [in the tests/UI directory](https://github.com/PrestaShop/PrestaShop/tree/develop/tests/UI).

## Contribute to UI tests

### Choose a scenario to automate

_**This part is only available for PrestaShopCorp employees.**_
* Go to the PrestaShop Forge
* Access to the Test Repositoy
* Find a test in the directory `Core` or `Modules` with the state "TO BE AUTOMATED"

### Create the PR
* The contributor create a PR targetting the development branch for UI tests.
* The contributor can check that its PR works with the [Github Action `ga.tests.ui.pr`](https://github.com/PrestaShop/ga.tests.ui.pr).

### Review the PR
* The review is done by [Software Developers in Tests of the project](/project-organization/people-and-roles/#software-developers-in-test).
* Some checks are done :
  * the PR complies with [contribution guidelines](https://devdocs.prestashop-project.org/8/contribute/contribution-guidelines/);
  * the CI is green (lint, typescript check);
  * the scenario is followed;
  * the test is executed without errors in the [nightly](https://github.com/PrestaShop/ga.tests.ui.pr);
  * the test use the Page Object Model pattern.

### Merge of the PR
* The merge is done after two approvals of [Software Developers in Tests of the project](/project-organization/people-and-roles/#software-developers-in-test) including a maintainer.
* After that, the contribution will be executed every night in the [nightly of the project](https://nightly.prestashop-project.org/) to ensure continuity and stability of the project.