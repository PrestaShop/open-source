---
title: Create a new version branch
weight: 20
aliases:
  - /maintainers-guide/releasing-prestashop/create-version-branch/
---

# Create a new branch for a new major/minor version.


## 1) create the new branch and push it to the main repo

## 2) open PRs based on the new branch and modify those files :

There are multiples repo to update.

I'll list the file I modified for the creation of the 9.0.x branch as well as the corresponding pull request.

Changed files :

PrestaShop/PrestaShop :  https://github.com/PrestaShop/PrestaShop/pull/37188

- .github/workflows/cron_js_routing.yml
- .github/workflows/cron_nightly_build.yml
- .github/workflows/cron_nightly_tests_9.0.x_mariadb.yml ( created )
- .github/workflows/cron_nightly_tests_9.0.x_mysql.yml ( created )
- .github/workflows/cron_nightly_tests_reports.yml
- .github/workflows/cron_nightly_tests_reusable.yml
- .github/workflows/cron_php_update_modules.yml
- .github/PULL_REQUEST_TEMPLATE.md

PrestaShop/test-scenarios : https://github.com/PrestaShop/test-scenarios/pull/558/files

- .github/workflows/gh-pages.yml
- config.json
- src/content/scenarios/known-bugs/core/9.0.x.md ( created )
- src/content/scenarios/known-bugs/_index.md

PrestaShop/presthubot : https://github.com/PrestaShop/presthubot/pull/277

- src/App/Command/SlackNotifierCommand.php


PrestaShop/prestashop.github.io : ( no PR needed this time )

- data/tags.yml ( check if already updated )

PrestaShop/kanbanbot : https://github.com/PrestaShop/kanbanbot/pull/58

- src/PullRequest/Domain/Aggregate/PullRequest/PullRequest.php
- src/PullRequest/Domain/Aggregate/PullRequest/PullRequestDescription.php
- tests/Shared/Infrastructure/Provider/TranslationsCatalogProviderTest.php
- tests/PullRequest/Application/CommandHandler/CheckTableDescriptionCommandHandlerTest.php

The following repo should be updated by the QA autom team but anyway here are the files I updated.

PrestaShop/ga.tests.ui.pr : https://github.com/PrestaShop/ga.tests.ui.pr/pull/79

- .github/workflows/build-shop.yml
- .github/workflows/pr_test.yml
- .github/workflows/pr_test_one.yml
- .github/workflows/pr_security_test_one.yml
- .github/workflows/test-sanity.yml
- .github/workflows/test-with-prebuilt-shop.yml
- .github/workflows/pr_test_single_campaign.yml

