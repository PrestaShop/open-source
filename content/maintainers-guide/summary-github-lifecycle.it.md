---
title: Riepilogo di come vengono elaborati gli Issues di GitHub e le Pull Request
url: guida-dei-maintainer/sommario-lifecycle-github
slug: sommario-lifecycle-github
weight: 20
menuTitle: Processing issues and PRs
---

# Riepilogo di come vengono elaborati gli Issues di GitHub e le Pull Request

GitHub is the main tool used by maintainers to manage the PrestaShop project.

This page quickly describes how [Issues](https://guides.github.com/features/issues/) and [Pull Requests](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests) are processed on GitHub.

## The teams

On GitHub, there are mainly three teams working together on the project.

- Product Team: this team takes care of the product vision of the software. It has Product Managers, UX Designers and Wording Managers.
- Quality Assurance (QA) team: this team takes care of ensuring the quality of the software. It has QA analysts and QA automation engineers.
- Developers team a.k.a Core Team: this team takes care of the code and act as maintainer for the project.

A maintainer will naturally belong to the Developers team but can also assist and work with the Product Team and QA Team.

## Issues

Currently, there are 4 different types of Issues submitted by users on GitHub.

### Feature Request

When a user submits a Feature Request, it can be either a Product feature request (example: add a new Back office page) or a Technical feature request (example: support PostgreSQL).

Product feature requests are labelled "Waiting for PM" while Technical feature request are labelled "Waiting for dev".

The team in charge will then analyse the request and either reject it or accept it. Rejected feature requests are closed while accepted feature requests are added to the roadmap and labelled. Labels will help triaging the backlog.

### Bug report

When a user submits a bug report, the QA team will analyse it and attempt to reproduce it. If it can be reproduced and is confirmed to be an issue, it will be labelled and added to the roadmap.

If it cannot be reproduced, QA team will attempt to explore the issue with the contributor to isolate the very settings responsible for the buggy behavior.

If the user does not answer for 30 days or after multiple attempts, it cannot be reproduced on our side, the issue is closed.

#### Regressions

If the bug report is confirmed, one of the key elements to evaluate is whether it is a regression. A regression is a bug that cannot be observed in the previous PrestaShop version, it means the software quality level has decreased instead of increasing. Regressions are usually milestoned to be fixed in the next patch version.

#### This is not easy

The work of analyzing and testing all submitted bug reports is a very complex one, because there might be a very diverse range of reports. Moreover quite a huge number of them are actually not related to the software but to how the shop is being used: the server configuration, the shop configuration, the installed modules and the installed theme might introduce buggy behaviors that the user mistakenly believes come from the software.

This is why so much Issues cannot be reproducted on our side, but to find it out multiple explorations and attempts are necessary.

### Support request

We sometimes receive support requests on GitHub, ranging from questions about the software to "please help me to do X in my shop" requests. GitHub is for the software development so we usually redirect users to [other channels]({{< relref "/support" >}}).

### Other

There are some Issues which do not fit in the previous categories, such as [releases Issues](https://github.com/PrestaShop/PrestaShop/issues/20804). They serve a specific purpose.

## Pull Requests

When a contributor submits a Pull Request, it goes through multiple stages.

### Is it eligible

Maintainers must first validate that the Pull Request is eligible to review (the template is filled, the license headers are correct, the target branch is the right one ...).

If there is an issue with the Pull Request and it is not eligible, maintainers kindly ask the contributor to fix it.

### About the intent

If the Pull Request is eligible, maintainers can evaluate if the changes brought by the Pull Request are desirables.

- If the Pull Request brings in changes in design, they can ask the validation of UX designers by adding the label "Waiting for UX".
- If the Pull Request brings in changes to the product, they can ask the validation of Product managers by adding the label "Waiting for PM".
- If the Pull Request brings in changes in wording, they can ask the validation of UX designers by adding the label "Waiting for wording".

If one "Waiting for ..." label has been applied, the team in charge will process the Pull Request and then add a "... approved" label. For example if Product team validates the new behavior implemented in a Pull Request, they will remove the "Waiting for PM" label and add the "PM approved" label instead.

There are some automated bots running on GitHub that will help maintainers to label the Pull Requests. For example Prestonbot is able to extract the new wordings and add the "Waiting for wording" label. You can read more about them [here][how-pull-requests].

### About the code

If the Pull Request is validated and there are no more "Waiting for ..." labels, then it awaits a [code review]. Maintainers provide this code review.

A maintainer can choose to
- Ask for changes in the Pull Request (which blocks merging)
- Provides comments wihout blocking or approving
- Approve the Pull Request

When the Pull Request has been approved (it needs two approvals on the Core repository), the Pull Request must be tested. It is labelled "Waiting for QA".

### Testing the Pull Request

On regular Pull Requests, the QA team is in charge of testing the Pull Request. They will use the "How to test" part of the Pull Request description to validate the behavior implemented, and also run some more tests to validate there are no regressions.

Some Pull Requests however cannot be tested by QA team, the Developers team might validate them.

If the Pull Request is tested successfully, the label "QA approved" is applied. Else, the author is notified about the Issues found by the tests.

### Merging the Pull Request

Pull Requests that have been validated by QA can be merged. They must also be milestoned, and if they fix an issue, the issue must be labelled, milestoned, and closed.

[how-pull-requests]: {{< devdocs "contribute/contribution-process/how-pull-requests-are-processed/" >}}
[code-review]: ({{< relref "/reviewing-pull-requests" >}})
