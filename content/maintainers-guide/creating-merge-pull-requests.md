---
title: Creating merge Pull Requests for all active branches
weight: 35
---
# Creating merge Pull Requests for all active branches

## What it is
We need to progress on the next minor/major version and the maintained patch version. 

## What is the job
- Create a Merge Pull Request for all active branches version by version (ex: `1.7.8.x` to `8.0.x`, `8.0.x` to `8.1.x`, and so on until everything is merged back into `develop`) (or if there are already some, see if they are blocked and if you can unblock them)
- Work on the bugs scoped for the next patch version. You can find them in the `8.0.{...}` Kanban. See if the bugs already in progress for the patch version are making progress. If you see a topic blocked see if you can unblock it.
- The QA by dev : PR with label “Waiting for dev” must be tested by a developer, the person in charge of this Pull Request can focus on it
- The QA team can ping the person in charge of this Pull Request for checking PRs without reproducible issues or verified issues or ask questions

## Merge Pull Request

Here is the explanation of how you should create your merge pull request (from the `1.7.8.x` to `8.0.x` branch in this example):

- Clone the repository locally
- You’ll need to checkout/create branches for both your source branch and your target branch, or update them if you already have them locally
  - `git checkout -b 1.7.8.x origin/1.7.8.x && git checkout -b 8.0.x origin/8.0.x`
  - `git checkout 1.7.8.x && git pull && git checkout 8.0.x && git pull`
- Once both the required branches are fetched locally and up to date you can create your merge branch (recommended) and merge the source branch in your target branch
  - `git checkout 8.0.x && git checkout -b merge-178-80 && git merge 1.7.8.x`
- At this point, you may have some conflicts that you will need to fix before you can commit them. Finally, you’ll have to push your merge branch to your fork repository.
  - `git push fork merge-178-80 -u`
- ⚠️ About `docs/CHANGELOG.txt` on `8.0.x` branch, you don’t have to retrieve the changes from `1.7.8.x` branch.
- You can now create the Pull Request on GitHub, one important detail in the description table you must **use ME as the category**
- Usually, these Merge pull requests are performed frequently to keep them as small as possible, if we respect this frequency the content shouldn’t be too important and we have a few risks that they can create some unexpected side effects. So most of the time we don’t need functional QA on those PRs. But of course, the PR’s CI must be fully green and you should run the automatic campaign test on your merge PR (see the section below).

## Running automatic tests on a Pull Request

In some cases to help the QA team or to allow the validation of a PR more quickly, you may need to run the automatic test for a specific PR. Lucky for us we have a very convenient tool that allows doing this, so let’s say you need to validate a PR with ID number #12345:

- Go to the tool repository [https://github.com/PrestaShop/ga.tests.ui.pr](https://github.com/PrestaShop/ga.tests.ui.pr)
- You need to clone this repository on your own organization (for example [https://github.com/jolelievre/ga.tests.ui.pr](https://github.com/jolelievre/ga.tests.ui.pr))
- Make sure you always keep your fork up to date by syncing the branches
- Go to your fork repository and then go to **Actions** and select **Testing PrestaShop pull requests** workflow
- You can now launch a manual workflow by clicking on **Run workflow** where you need to specify a few parameters:
  - **Pull request Id**: The id of the PR you wish to test (in our example `12345`)
  - **Base branch to rebase the PR:** The branch used as a target for your PR
  - **Rebase or merge the pull request:** For regular contributions PR you can leave the default choice `rebase` For merge Pull Requests you should select `merge`
  - **PHP version**: select the one you need or keep the default value
  - **Node version**: select the one you need or keep the default value
- Now you can let the workflow run, it is strongly advised to copy the URL to your created run and post it as a comment in the related PR because it’s hard to tell runs apart from your list so it will save time for everyone.
- You can now wait for the workflow to run. Be aware that some tests may be failing but you should **always compare them to the nightly run reports** [https://nightly.prestashop.com/](https://nightly.prestashop.com/) Because some branches may be in an unstable state during development, it doesn’t necessarily mean that your PR has introduced a bug, the bug may have already present. In case of doubts always ask for the QA team’s opinion.