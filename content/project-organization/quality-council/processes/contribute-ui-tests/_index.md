---
title: How to contribute to UI tests
---

# How to contribute to UI tests

## Overview

Contributing to UI tests involves the following steps:

1. Selecting a scenario
2. Setting up your environment
3. Writing the test
4. Submitting a Pull Request (PR)
5. Getting it reviewed and merged

---

## Introduction

Scenarios are the basis of UI tests. They describe expected behaviors in a human-readable format and are available in the [PrestaShop Tests Documentation](https://build.prestashop-project.org/test-scenarios/).

Tests are the automated implementations of these scenarios. They are located in the [tests/UI directory of the PrestaShop Core repository](https://github.com/PrestaShop/PrestaShop/tree/develop/tests/UI).

---

## Contribute to UI tests

### 1. Choose a scenario to automate

* Go to the [`test-scenarios` repository](https://github.com/PrestaShop/test-scenarios/issues?q=is%3Aissue%20state%3Aopen%20label%3A%22STATE%20%3A%20To%20Be%20Automated%22)
* Find an open issue labeled **"STATE : To Be Automated"**
* Select a scenario from the `Core` or `Modules` scope

---

### 2. Setup your environment

#### Prerequisites

* Node.js (recommended LTS version)
* npm
* Git

#### Project setup

* Checkout your fork of PrestaShop on the `develop` branch
* Follow the [installation guide](https://devdocs.prestashop-project.org/9/basics/installation/)
* Install your shop with:

  * Language: **English**
  * Country: **France**

#### UI test setup

```bash
cd tests/UI/
npm install
cp .env.local .env
```

Update the `.env` file to match your local environment. Make sure to configure:

* `BASE_URL`
* Browser settings
* Credentials if required

#### Run a test

You can run a specific E2E test using:

```bash
TEST_PATH="functional/BO/00_login/02_login.ts" npm run test:specific:fast-fail
```

---

### 3. Create the test

You can now start writing your test.

* The directory structure mirrors the scenario structure
* Place your test in the corresponding folder
* Follow existing naming conventions

#### Tech stack

* **Mocha**: test framework
* **Playwright**: browser automation
* **@prestashop-core/ui-testing**: utilities and Page Object Models

#### Guidelines

* Follow the scenario strictly
* Use the Page Object Model pattern
* Reuse existing utilities and helpers
* Avoid hardcoded values
* Ensure your test is stable and deterministic

---

### 4. Create the Pull Request

Once your test runs successfully locally:

* Push your branch
* Open a Pull Request targeting the `develop` branch
* Trigger a run from your fork of the GitHub Action `ga.tests.ui.pr`

Make sure all checks pass before requesting a review.

---

### 5. Review process

The review is performed by [Software Developers in Test](/project-organization/people-and-roles/#software-developers-in-test).

During the review, the following checks are performed:

* Compliance with contribution guidelines
* CI status (lint, TypeScript checks, tests)
* Respect of the original scenario
* Test stability in CI
* Proper use of the Page Object Model pattern

---

### 6. Merge

The PR is merged after two approvals from [Software Developers in Test](/project-organization/people-and-roles/#software-developers-in-test), including at least one maintainer.

Once merged, the test is executed nightly to ensure ongoing stability of the project:

* [https://nightly.prestashop-project.org/](https://nightly.prestashop-project.org/)

---

## Best practices

* Keep tests independent
* Avoid shared state between tests
* Use Page Object Models consistently
* Prefer reusable helpers from `@prestashop-core/ui-testing`
* Keep tests readable and maintainable

---

## Troubleshooting

* Ensure your `.env` file is correctly configured
* Verify that your shop is properly installed
* Run tests in headed mode for debugging if needed
* Check CI logs if tests fail on the pipeline
