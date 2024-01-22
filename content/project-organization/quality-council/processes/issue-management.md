---
title: How to manage Issues
aliases:
   - /maintainers-guide/qa/issue-management/
---

# How to manage Issues

This document details the processes in place for the position of "Issues Manager", a rotating position within the QA community members.

## The Issue Manager job

Your job is to **qualify issues** submitted to the GitHub project. Good issues help us discover bugs and provide ideas to improve PrestaShop and the native modules. These are the three questions you must ask yourself:

- **Is the issue valid?** The issue must be a bug report. We only cover the PrestaShop project (Core + native modules). Request for feature should be converted in GitHub Discussions.
- **Has all the needed information been provided?** The issue must be understandable and contain the required information as provided in the issue template, complemented with any other detail needed for reproduction.
- **Can it be reproduced?** An issue can't be fixed if we can't reproduce it.

Here are some tips:

- **Don't provide free support.** Your job isn't to help the reporter fix their problem, but to determine if the problem is caused by a defect in the software (or in documentation).
- **Be pragmatic about your efforts.** It's the reporter's responsibility to provide the information needed to reproduce the problem in an understandable way. Don't waste your energy doing guesswork or waiting for a response.
- **Don't be a robot either.** Don't take these guidelines to the letter. If the reporter makes an effort, try to be flexible.

## Issue state & labels

GitHub has only two states for issues: open and closed. We use labels to keep track of issue type, intermediate state, severity and resolution.

### Main Labels

1. **Type**
    - **`Bug`** – a defect in the software
    - **`Deprecated - Feature`** – a new feature, a change in an existing functionality (deprecated since April 2023)*
    - **`Task`** – an issue to track an action that’s not a fix or improve the software like to release a module or network infrastructure changement. It’s a task mainly to be done by the maintainer dev.
    - **`Epic`** – an Epic is a group of issue that are going to
2. **Status**
    - **`NMI`** – "Need More Info" - the issue is waiting for its author to provide more details about their request
    - **`Needs specs`** – the issue is waiting for specification, the development should not start until it's ready.
    - **`Ready`** – the issue has been specified and is ready to be picked up by a dev
    - **`WIP`** – a dev has claimed the issue and is working on it
    - **`Deprecated - TBR`** – “To Be Reproduced” (deprecated since August 2023)*
3. **Resolution**
    - **`Fixed`** – the issue has been resolved
    - **`Rejected`** – the issue has been analyzed and it was decided no to do it (for whatever reason)
    - **`Invalid`** – the issue is incomplete, cannot be reproduced, or its author is unresponsive
        
        In addition to this label, additional labels can be added for informative purposes:
        
        - **`Can't reproduce`** – the reported bug cannot be reproduced
        - **`Duplicate`** – the issue has already been reported
4. **Severity** *(only for bugs), example [here](../../../../get-involved/report-issues/how-issues-are-sorted/)*
    - **`Trivial`** – cosmetic, low impact bugs
    - **`Minor`** – low severity bugs
    - **`Major`** – high severity bugs
    - **`Critical`** – shop-stopper bugs

### Ad-hoc labels

1. **`Verified`** – the bug report has been successfully reproduced
2. **`Deprecated - Regression`** – the bug breaks a feature that was working well before (deprecated since August 2023)*
3. **`Developer Feature`** – technical feature, targeting developers
4. **`<branch>`** – where the bug has been reproduced on current branch like `8.1.x` or `develop` branch
5. Solution available – known solution for a bug that hasn't been fixed/released yet
    - **`PR available`** – a PR fixing the bug is available
    - **`Workaround available`** – a workaround for the bug has been shared
6. **`<Category>`** - **`BO`** (Back-office), **`FO`** (Front-office) or  **`WS`** (Webservices) ... - Which part of the software the feature bug/feature is applied
7. **`<Page / Section>`** - e.g. **`Product`** Which page/section the feature bug/feature is applied
8. **`Module`** and **`<Module name>`** – Name of the native module the bug / feature belongs to

{{% notice warning %}}
Don’t use the **`develop`**  label, try to specify the branch like **`8.1.x`** or **`9.0.x`**
{{% /notice %}}

### Flow overview

Source: [https://miro.com/app/board/o9J_kwzVdW0=/](https://miro.com/app/board/o9J_kwzVdW0=/)

## Your routine

### New issues

The first thing to do is to deal with the new issues. This can be done by [filtering out New issues](https://github.com/PrestaShop/PrestaShop/issues?q=is%3Aissue+is%3Aopen+label%3ANew). Each of these issues must be managed according to the issue processing protocol.


{{% notice warning %}}
This step should be repeated regularly during the day, to deal with issues as they arise.
{{% /notice %}}

### Issues with the NMI label

The second step is to deal with issues labelled `NMI` (Need More Info) without `Waiting for author` label, which could have been updated by the author or any member of the community. To do this, you have to display the [NMI labeled issues](https://github.com/PrestaShop/PrestaShop/issues?q=is%3Aopen+is%3Aissue+label%3ANMI+-label%3A%22Waiting+for+author%22+-label%3A%22Waiting+for+dev%22+sort%3Aupdated-asc+) without `Waiting for author` and sort them by decreasing date of update. NMI issues are issues where crucial information is missing that only the author can provide, usually details on the reproduction steps. If the author or any member of the community has replied and provided the requested details, the issue will proceed according to the issue handling protocol.

{{% notice warning %}}
Make sure you inspect all issues updated in the last few days and not just in the last 24 hours!
{{% /notice %}}

### Issues to be closed

Finally, the third step consists in tracing the issues that have not been updated for more than 20 days, and closing them. To do this, you have to [filter by increasing date](https://github.com/PrestaShop/PrestaShop/issues?q=is%3Aopen+is%3Aissue+label%3ANMI+label%3A%22Waiting+for+author%22+sort%3Aupdated-asc) and on the `NMI` + `Waiting for author`filter. Steps :

1. Comment with the "Issue without answer" model
2. Remove the `NMI` label
3. Add the label `Invalid`
4. Close the issue

### End of the day

Take the time to list the issues reproduced and taken into account during the day. 
Send an email to [coreteam@prestashop.com](mailto:coreteam@prestashop.com), [support-team@prestashop.com](mailto:support-team@prestashop.com), [qa-core@prestashop.com](mailto:qa-core@prestashop.com) AND [coreproduct@prestashop.com](mailto:coreproduct@prestashop.com) with a brief report, with a list of validated issues (aka taken into account) and duplicated issues and share the same content on Public Slack with **[project-members](https://app.slack.com/client/TTJ6M3GPL/G01D794JQTE)**. 

Example:

```
Hello,

Here is the report of the day xx/xx/2020

#Verified
- [#18338](https://github.com/PrestaShop/PrestaShop/issues/18338): BO - Module permissions are not updated for restriction groupIssues fermées car doublons

#NMI
- [#28275](https://github.com/PrestaShop/PrestaShop/issues/28275): Context CurrentLocale not initialised when running a module update

#Closed
- [#18345](https://github.com/PrestaShop/PrestaShop/issues/18345): Duplicate of [#12556](https://github.com/PrestaShop/PrestaShop/issues/12556) => Installation Error: the % symbol is doubled on the parameters.php file generation

Kind regards, xx
```

## Handling issues

The handling of issues follows a detailed process. Here are the different steps, to be followed in order

### First and foremost

**Check that the report is really an issue!**

- *Deprecated - if it's a feature request, redirect to the [appropriate template](https://github.com/PrestaShop/PrestaShop/issues/new?assignees=&labels=Feature%2CNew&template=2_feature_request.yml). (since April 2023)*
- **If it's a question** you're not obliged to answer it. Remember that the issues section is not a Q&A forum and that your job isn't to provide free support. Redirect the reporter to a support plan using the "Issue is a support request" response.
- **If it's something that you think should be described in documentation**, consider pinging the developers or moving the issue to the [docs project](https://github.com/PrestaShop/docs).
- **If it is a clearly incomprehensible request**, close the issue by adding the `Invalid` label and answer using the "Issue not completed" response.

### Issue language

Issues must be written in English. If that’s not the case:

1. Answer using the "Issue not in English" template.
2. Set status label to `NMI` (Need More Info) + `Waiting for author`.

### Issue content

The issue (Bug) must be complete. In particular, all mandatory fields in the [template](https://github.com/PrestaShop/PrestaShop/issues/new?assignees=&labels=Bug%2CNew&template=1_bug_report.yml) must be completed:

- **Describe the bug and add screenshots:** full details about the bug. This part represents the "observed behavior" following user manipulations.
- **Expected behavior:** the "behavior expected" by the user, to be opposed to the observed behavior detailed above. This is the nominal behavior of the application. Pay attention to the specifications.
- **Steps to Reproduce:** the steps to reproduce the problem. This is the most important part and must be completed in a comprehensive manner.
- **PrestaShop version(s) where the bug happened:** all affected versions
- **PHP version(s) where the bug happened:** PHP version
- **If your bug is related to a module, specify its name and its version:** the module name and its version

In case any information is missing:

1. Reply using the "Incomplete Issue" template.
2. Set status label to `NMI` (Need More Info) with `Waiting for author` label.
3. **Don’t forget** to add the necessary labels like : **version** (`1.7.8.x`, `8.1.x`, …), **Category** (`BO`, `FO`, …), **Pages** (`Products`, `Module`, `Order`, …), …

If it is a `Task`, add the necessary labels and place it in Project Kanban:

1. If the task is dev oriented, add the `Developer Feature` label.
2. If the issue seems properly specified, set the status label to `Ready`. Otherwise, set it to `Needs specs`.
3. **Don’t forget** to add these labels like : **Category** (`BO`, `FO`, …), **Pages** (`Products`, `Module`, `Order`, …), ….

{{% notice warning %}}
Take some time to verify that the contributor's environment satisfies [PrestaShop's system requirements](https://devdocs.prestashop-project.org/1.7/basics/installation/system-requirements/) for 1.7 or [PrestaShop's system requirements](https://devdocs.prestashop-project.org/8/basics/installation/system-requirements/) for 8.
{{% /notice %}}

### Duplicated issues

It is important to avoid creating a duplicate bug. To do this, we must search in GitHub to make sure the issue hasn't already been created. **This step is critical.** To do this, use labels to filter as many issues as possible in GitHub. Be careful, remember to look at the closed issues.

If a duplicate is found:

1. Answer using the "Duplicate Issue" template.
2. Add the `Invalid` and `Duplicate` labels.
3. Close the issue.

### Reproducing the issue

We must be able to reproduce the bug in a controlled environment. You can record your attempt, use a screen recorder (like [Screencastify](https://www.screencastify.com/), a Chrome extension), download it and then upload it on Github, post it in a comment so that the issue’s author can see the steps you used to reproduce their issue, either on the current branch or on develop branch, depending of what the author declared in his issue.

#### If the **issue cannot be reproduced**

We were not able to reproduce the issue like the author described, even with all possible infos provided.

1. Answer using the template "Non reproducible issue".
2. Add the label `Waiting for author` .
3. Wait 20 days, if there is no new information, you can close the issue with the message “unanswered issue”.

#### If the **issue CAN be reproduced**

Once we have reproduced the issue with all the details given by the author, we need to check if the bug exists in the **next stable PrestaShop version to be released**.

#### **The issue is not reproduced in the next stable PrestaShop version**

That means the issue has since been corrected. So you have to find the PR that fixes the problem (it can be a migration PR, or a PR that fixes something else and fixes the problem by side effect!). We then answer the author to give him the information about the PR that fixes the problem, and tell him to update his version of PrestaShop. The issue is then closed. Add the label "Fixed" and don’t forget to add the milestone.

#### **The issue is reproduced in the next stable PrestaShop version**

Now we can say that the report is indeed a bug: we now add the `Verified` label. 

Now we have to go back up the chain to find the source of the problem. To do this, test the latest stable version of the previous minor release.

If the issue is reproduced: the bug follows the normal course: go to the next step.

If the issue is not reproduced: **It’s a regression!** Test all the latest patch versions of the current minor version (e.g. 1760, 1761, 1762...) to find out in which version the issue has been introduced. If motivated, look for the PR in question. Then the issue follows the normal course: go to the next step. In addition, it has to be posted on #dev-core (Public Slack). The Project must then be labeled by selecting the **label corresponding to the version in which the regression was detected.**

{{% notice note %}}
The regression of the last minor or major stable version must be placed in the [patch backlog](https://github.com/PrestaShop/PrestaShop/projects/20) kanban, in the first column.
{{% /notice %}}

{{% notice note %}}
The regression of the develop branch must be placed in the Kanban of the corresponding next minor or major version.
{{% /notice %}}

### Labelling

**This step is critical** cause **labelling** consists on tagging the issue according to its different characteristics and it helps us find a bug when we’re looking for a `duplicate`. The different tags are:

- Type (`Bug` or `Task`),
- [Severity (major, minor, ...)](../../../../get-involved/report-issues/how-issues-are-sorted/)
- *Deprecated - Regression or not (since August 2023),*
- `Verified` (if we reproduce the issue)
- Category (`FO`/`BO`),
- Affected page or concerned feature (ex: `Order`, `Module`, …),
- Affected version(s),
- Status (NMI, Needs Specs, Ready...)
- ... (non-exhaustive list)

A list of labels and their use is [available here](https://docs.google.com/spreadsheets/d/118iqWIkW24Rwn6eY8_7FnPhAacGXwA2RdGPzR_LXvy4/edit#gid=0).

### Connecting an issue to an EPIC

{{% notice warning %}}
When the issue is a **bug that was reproduced** (meaning with the `Verified` label), it MUST in most cases be connected to an Epic if it already exists.
{{% /notice %}}

To do this, perform a search in the [Bug classification board](https://github.com/PrestaShop/PrestaShop/projects/11) where all Epic are listed. If there is a related EPIC, add the issue to the Epic (by editing the description) and ping the product team.

If no Epic clearly corresponds to the issue (or in case of doubt), just add the bug issue to the 1st column of the kanban called "waiting for classification". The product team will regularly review the issues in this kanban and create new Epics when needed.

Note that the product team must be able to understand the bug to be able to classify it in an Epic. This means that if the issue is not correctly described nor labelled, or if this is a very tech issue, it MUST NOT be added to the kanban.

### Rewriting the issue

Once all the steps have been completed, the content of the issue should be rewritten if it is unclear, or if the author has clarified in the comments. All necessary information should be available in the body of the issue! It may be necessary to rewrite the title if it is too generic (e.g. "Help! BUG!") or if it does not accurately reflect the bug.Pay special attention to the **reproduction steps** ("how to reproduce")!

### Validating the issue

If the issue is complete and unique, it's time to validate it! For that, after having correctly labelled it, we use the "Issue validated" model. It is important to ping the team best able to answer the author's questions: the devs, the product, the support, the qa...

## Messages templates

### Issue not in English

```
Hello,

Please send your request in English. English is the norm on GitHub.

Thank you
```

### Issue for 1.6

```
Hello,

PrestaShop 1.6 has reached end of life and is no longer officially maintained ([see announcement](https://build.prestashop-project.org/news/2019/1.6.1.x-what-s-next/)).

Maintenance for this version is now being performed exclusively by volunteers on a very limited scope. You can open an issue on its [dedicated repository](https://github.com/PrestaShop/PrestaShop-1.6/issues), but please keep in mind that only absolutely critical issues may be acknowledged.

Thank you
```

### Incomplete issue

```
Hello,

Could you please provide us with more info?
We need more details to understand how we can reproduce your issue:
- host
- server setup and configuration
- PrestaShop version (source)
- debug mode report
- PHP error logs
- apache error log
- Javascript console log
- screenshots
- ...

You don't know how to get this information? Please read the following article: [How to create a bug report](https://build.prestashop-project.org/howtos/misc/how-to-create-bug-report/).

Thank you
```

### Non-reproducible issue

```
Hello,

Despite our efforts, we were not able to reproduce your issue with the provided information. Let's wait up to 20 days if there will be another contributor who encounter the same issue and can provide new informations to help us reproducing the issue.

Thank you!
```

### Duplicate issue

```
Hello,

We are aware of this issue, it is already in our debug backlog. This issue is a duplicate of #Issue_number.
To be informed when it's fixed, please subscribe to the issue mentioned above.

Thank you
```

**In addition to the message above, add a second comment containing the following sentence:**

```
Duplicate of #Issue_number
```

This message is special and will trigger a GitHub tag to mark the issue as "duplicate" and link it to the original issue.

### Issue unanswered

```
Hello [name],

Since we had no news from you for more than 20 days, I'll close this ticket to avoid cluttering up the backlog. Please note that you can always create a new one if further information pops up.

Thank you
```

### Issue validated

```
Hello,

I reproduce the issue with PrestaShop version x.x.x, I'll add this to the backlog so it can be fixed.

Please be aware that some issues might take a very long time to be resolved. If this one is important to you and you cannot wait for it to be fixed on the project’s own time, we strongly suggest you consider [contacting a professional](https://www.prestashop-project.org/support/) to help you. 

If you fix the issue on your end, please [contribute it back to the project](https://devdocs.prestashop-project.org/8/contribute/contribute-pull-requests/). Remember that the more people contribute, the better PrestaShop becomes for everyone.

Thank you
```

You can personalize the message according to your needs, for example:

For active contributors, it’s not necessary to add this block:

```
If this one is important to you [...], the better PrestaShop becomes for everyone.
```

Instead, you can add this:

```
We’re waiting for your PR 🚀
```

### Issue not completed

```
Hello [name],

Thank you for submitting this issue. Unfortunately, there is not enough information provided to reproduce it and work on it. **You must follow the template and provide clear and concise steps to reproduce the bug**. 
Read more about how we expect the issues to be handled [here](https://build.prestashop-project.org/news/2020/how-bug-reports-are-handled/). Feel free to create a new issue if you can provide further information, we will be glad to investigate it. 

Thank you
```

### Issue is a functional feature request

```
Hello,

Thank you for your suggestion. The Maintainer Team will take it into consideration for future developments. 

Please be aware that there is no guarantee that this feature will be developed anytime soon. If this is important to you, we strongly suggest you consider [contacting a professional](https://www.prestashop-project.org/support/) to help you create it. 

If you or anyone else is willing to [contribute this feature](https://devdocs.prestashop-project.org/8/contribute/contribute-pull-requests/) to the PrestaShop Project, the teams will be happy to help by ensuring that it fits well within the project. Please let us know if that is the case!

Thank you
```

For active contributors, it’s not necessary to add this block:

```
If this one is important to you [...] Please let us know if that is the case!
```

Instead, you can add this:

```
We’re waiting for your PR 🚀
```

### Issue is a support request

```
Hello,

We only use GitHub issues to discuss about bugs and new features in the PrestaShop project. If you need support, you can find resources to help you on this page: [Get help with PrestaShop](https://www.prestashop-project.org/support/).

Thank you
```

### Issue is too technical to reproduce

```
Hello,

Thanks for reporting this issue!
Ping @PrestaShop/committers : Could someone please try to reproduce the issue, it's too technical!

Thanks in advance!
```

### Issue about an archived module

```
Hello,

This module has been archived, it’s no longer maintained but you still can fork it if you need it for your shop.
Also let us know if you are voluntary to maintain this module.

Thanks in advance!
```

## Miscellaneous notes (to be read!)

1. The "NMI" (Need More Info) tag is used at the beginning of the life of the issue, when there are still questions about the issue (quality, completeness, etc). 
2. "Waiting for Author" is used for conversations with the author and for NMI issues when we answers. The issue-bot will delete the label when the author answer (to help us filtering the issues that needs answers, check the [filter](https://github.com/PrestaShop/PrestaShop/issues?q=is%3Aopen+is%3Aissue+label%3ANMI+-label%3A%22Waiting+for+author%22)).
3. In case of regression discovery, it is essential to share the regressions on #dev-core (Public Slack) and to put them in the right project (e.g. if the regression is on PS 1.7.8.5, we put it in the project 1.7.8.5 and in the project [Maxi Kanban](https://github.com/orgs/PrestaShop/projects/7), then the PM will prioritize it).
4. Don't hesitate to ping the devs/product/QA on issues where their expertise could help, and to add the corresponding label ("Waiting for PM", "Waiting for Dev", etc).
    - If you ping someone, ask a direct question! Don't waste their time by making them read the whole thread and guess why did you ping them.
    - If the issue is too technical to reproduce, add the “TBR” and “Waiting for Dev” labels. You should also ping @PrestaShop/committers on the issue.

5. If you don’t know if the issue `Major` or `Minor`, please post it in [#quality-assurance](https://app.slack.com/client/TTJ6M3GPL/C05M16TEEGG) and ping QA lead (@Robin Fischer), so they can settle the severity.
