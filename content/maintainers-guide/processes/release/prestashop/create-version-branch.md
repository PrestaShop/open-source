---
title: Create a new version branch
weight: 20
aliases:
  - /maintainers-guide/releasing-prestashop/create-version-branch/
---

## Create a new branch for a new major/minor version.

### 1. Create the new branch and push it to the main repo

Create the branch on you local git and push it to the main repository. You will need to push it to the main repository and not to your fork.

### 2. Open PRs based on the new branch and modify those files:

To create the new branch, we need to update several repositories to complete the necessary work.

Below is a list of repositories with modified files for creating the `9.0.x` branch.


`PrestaShop/PrestaShop`:

- .github/workflows/cron_js_routing.yml
- .github/workflows/cron_nightly_build.yml
- .github/workflows/cron_nightly_tests_9.0.x_mariadb.yml ( created )
- .github/workflows/cron_nightly_tests_9.0.x_mysql.yml ( created )
- .github/workflows/cron_nightly_tests_reports.yml
- .github/workflows/cron_nightly_tests_reusable.yml
- .github/workflows/cron_php_update_modules.yml
- .github/PULL_REQUEST_TEMPLATE.md

`PrestaShop/test-scenarios`:

- .github/workflows/gh-pages.yml
- config.json

`PrestaShop/presthubot`:

- src/App/Command/SlackNotifierCommand.php

`PrestaShop/prestashop.github.io`: ( no PR needed this time )

- data/tags.yml (make sure the tag doesn't exists already)

`PrestaShop/kanbanbot`:

- src/PullRequest/Domain/Aggregate/PullRequest/PullRequest.php
- src/PullRequest/Domain/Aggregate/PullRequest/PullRequestDescription.php
- tests/Shared/Infrastructure/Provider/TranslationsCatalogProviderTest.php
- tests/PullRequest/Application/CommandHandler/CheckTableDescriptionCommandHandlerTest.php

The QA Automation Team should update the following repositories:
`PrestaShop/ga.tests.ui.pr`:

- .github/workflows/build-shop.yml
- .github/workflows/pr_test.yml
- .github/workflows/pr_test_one.yml
- .github/workflows/pr_security_test_one.yml
- .github/workflows/test-sanity.yml
- .github/workflows/test-with-prebuilt-shop.yml
- .github/workflows/pr_test_single_campaign.yml
