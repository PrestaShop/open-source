---
title: Nightly Board
---

# Nightly Board

## Goal

The nightly board is the dashboard for Software Developers in Test. It is checked every morning in order to stabilize existing tests and escalate issues in the event of regressions detected on all supported branches.

## Schedule

Every day at 01:00 AM

## Code

Nightly tests are executed every day with this process:

* Create the nightly build ([Github worflow](https://github.com/PrestaShop/PrestaShop/blob/develop/.github/workflows/cron_nightly_build.yml))
* Execute tests and Report
    * [1.7.8.x](https://github.com/PrestaShop/PrestaShop/blob/develop/.github/workflows/cron_nightly_tests_1.7.8.x.yml)
    * [8.0.x](https://github.com/PrestaShop/PrestaShop/blob/develop/.github/workflows/cron_nightly_tests_8.0.x.yml)
    * [8.1.x](https://github.com/PrestaShop/PrestaShop/blob/develop/.github/workflows/cron_nightly_tests_8.1.x.yml)
    * [develop](https://github.com/PrestaShop/PrestaShop/blob/develop/.github/workflows/cron_nightly_tests_develop.yml)

The nightly board is based on two repositories : [Backend](https://github.com/PrestaShop/QANightlyResults) & [Frontend](https://github.com/PrestaShop/nightly-board/).

## How it works

### Nightly Build

This is the step where it runs the entire test suite on all the supported branches. 

The following process applies to each of the branches:

* Use the Release Creator to create the ZIP containing PrestaShop with all the assets to check that everything is OK.
* All the campaigns are launched in parallel on an instance  based on the branch's `Dockerfile`.
* When all the campaigns are finished, we use `mochawesome-merge` to merge all the reports.
* Upload this unified report to Google Cloud Storage
* Send a request to the Nightly API to process this report.

### API

The API has several endpoints:

* `GET /data/badge/svg` to display a badge on the status of a branch
* `GET /graph` to retrieve the data to display the evolution graphs
* `GET /hook/reports/import` to process the unified Mochawesome report to adapt it for database storage.
* `GET /reports` to get the list of reports

### Nightly board

![Nightly ](../images/nightly-board-1.png)

The nightly board is based on Nuxt 2 & Vue 2.7. 

It allows you to display all nightly reports, filterable by campaign, platform and version. It is possible to display an evolution of tests on a period and on a specific version.

A continuous integration is available for testing the nightly board in preproduction and production.