---
title: Reviewing and approving Pull Requests
weight: 30
---

<style>
.content label { display: inline; border-radius: 2em; font-size: 80%; font-weight: bold; color: #000; padding: .3em .8em; white-space: nowrap}
label[type=needs] { background-color: #FBCA00; }
label[type=check] { background-color: #B9EC4F; }
label[type=branch] { background-color: #6270E9; }
label[type=type] { background-color: #D4C5F9; }
label[type=category] {}
label[type=bcbreak] { background-color: #FF7854; }
label[type=keyfeature] { background-color: #FFB33A; }
label[type=needsdoc] { background-color: #D93E0B; color: #fff; }
label[type=wip] { background-color: #FF8800; }
label[type=e2e] { background-color: #EDEDED; }
label[type=migration] { background-color: #00E031; }
</style>

# Reviewing and approving Pull Requests

All contributions to the PrestaShop project are subject to review. The main objective of this process is to make sure that proposed changes are desirable, coherent with the project's objectives, and that its inclusion won't produce undesired side effects.

Approving a Pull Request is a meaningful act. It carries multiple messages:

1. **The submitted code is correct.** This is the most obvious requirement; a Pull Request containing invalid code will never be merged.

2. **The resulting behavior is desired.** Some Pull Requests might be technically correct, but are not merged because they aren't considered useful for the project. For example a Pull Request implementing support for the XCF format for images is likely to be rejected as this esoteric image format is rarely used for the web.

3. **Maintainers agree to maintain the added code.** Code that is merged inside the project becomes part of it. It means the project maintainers agree to maintain, manage, test, document and update this code as if it was their own.

Everybody in the community can and is encouraged to review submitted Pull Requests. However, only some project members have the ability to accept or reject contributions.

In order to be merged by project members, contributions must undergo up to three stages of approval: **Code review**, **Product / UX / Wording review** (if necessary), and **QA verification**.

## Code review

The code review process is generally regarded as a good practice and is adopted by most software projects around the world. It provides many benefits:

- **it helps spot errors in the code**, because we all make mistakes, and it can be hard to find one's own mistakes.
- **it helps improve code quality**, not only by ensuring the code is readable and understandable, but also by pinpointing design, performance or security issues that may have been missed by the author.
- **it helps spread knowledge of the codebase**, because reviewers will learn how the code works too.

The goal of the code review is to find the best solution by sharing different points of view through constructive conversation.

Pull Requests submitted to the [PrestaShop Core repository](https://github.com/PrestaShop/PrestaShop/) require approval from at least two different maintainers. Other repositories require approval from at least one maintainer.

### Acceptance criteria

During review, Pull Requests should be checked against these requirements:

* The change provides enough value to be worth merging, and is coherent with the rest of the project.
* The is code clear enough, and it includes all the necessary comments to understand it.
* The PR complies with the [contribution guidelines][contribution-guidelines], including:
  * The PR targets right branch.
  * The nature of the change and the author's reasoning is clear.
  * The PR title is clear enough to be added as a line in the Changelog.
  * The change address the issue the PR is intended to fix/implement.
  * The PR stays within scope to address _only_ that issue.
  * The PR provides clear instructions to verify that the change works as expected.
  * All the files include the right licence headers.
  * Any and all breaking changes have been described in the PR body.
  * Any and all deprecations have been described in the code and in the PR body.
* The changes are covered by automated tests (where possible), and those tests cover all relevant edge cases.
* The changes don't introduce evident regressions nor degrade the software quality in any way. If a compromise is being done, it has been documented.
* If the change introduces or modifies a feature, the expected behavior of the feature been [documented][specs] and approved by the project's Product Managers.

Not fulfilling the above requirements usually blocks a contribution from being accepted. However, the opposite does not automatically mean that such a contribution must be accepted.   

#### Breaking changes

Since PrestaShop follows [SemVer][semver], Pull Requests introducing [Breaking Changes][bc-break] can generally only be accepted in major versions.

This rule can be overridden in special cases, for example when a critical or security issue cannot be fixed in a backward compatible manner.

#### Red flags

Here are some examples of "red flags" that should not be approved during code review:

- Anti-patterns or code that clearly violates software development best practices such as [SOLID][solid] principles.
- Code that does not comply with current PrestaShop architecture, unless for good reasons (example: view logic inside the model layer).
- Code that performs and/or scales poorly.
- Code that is very hard to read and consequently less maintainable.
- Code that is missing standard features or that is not generic enough (example: logic that only makes sense for a specific country or region).
- Code that is missing a key need of PrestaShop's users (example: CSS that is not [RTL][rtl]-compliant).
- Code that is not secure.

More details available [here][pull-request-process].

## Product, UX & Wording review

Besides the maintainers' code review, additional approval from other members is required in the following cases:

* **Product Managers**, when the change introduces a new feature or changes in existing features (eg: a new page, adding a button, modifying a business rule...).
* **UX Managers**, when the change introduces visual changes (eg: changing a layout, modifying a color...).
* **Wording Managers**, when the change introduces new wordings.

Whenever any of cases above applies, the Pull Request cannot proceed to QA verification until at least one of each of the required project members have given their approval.

If necessary, these people can be reached out on the [Slack chat][slack].

## QA verification

After the Pull Request has been approved, the change must go through a Quality Assurance (QA) verification. Software testers will proceed to manually test the modified software to make that it works as expected.

As a general rule, all Pull Requests undergo the QA verification, except for the following cases:

* Version branch merges
* Changes that have no functional impact (e.g. code comments), cannot be manually verified, or are verified by automated tests.

The Pull Request can proceed to merge once the QA verification is successful.

## Requesting changes

Be polite and respectful. Remember that you're reviewing the hard work of other people. The Symfony project provides good tips on providing [respectful review comments](https://symfony.com/doc/current/contributing/community/review-comments.html).

The reviewer's job is to evaluate whether the proposed solution is appropriate, not to reverse-engineer it. If a change appears as cryptical or difficult to understand, ask the author to clarify their intent and/or justify their choice of implementation.

PrestaShop is complex software, and it's not unusual to be unaware of the details of all components or subsystems. When in doubt, ask other maintainers for their opinion. If a PR introduces significant changes (a new dependency, a new extensibility mechanism), consider asking the opinion of multiple maintainers. 

Note that architecture related changes require submitting a [formal request for comments][adr], which are subject to a vote from maintainers, and are approved by majority.

Pull Requests may be closed after 30 days of inactivity following a request for modifications.

## Merging Pull Requests

A Pull Request may only be merged after the following requirements have been fulfilled:

- The change has received all the required approvals.
- The change does not have any outstanding merge conflicts.
- Automated checks (including automated tests) are passing.

### After merging

After merging a Pull Request on the Core Repository, maintainers must make sure to:

- Link the Pull Request to the right milestone. The milestone to choose is the next target release.
- Add the label <label type="keyfeature">Key feature</label> if the Pull Request must be mentioned in the Release Note.
- Add the label <label type="bcbreak">BC break</label> if the Pull Request introduces a [BC Break][bc-break].
- Add the label <label type="needsdoc">Needs documentation</label> if the Pull Request introduces changes that need to be documented in [DevDocs][dev-doc].

These actions are very important as they will be key to writing a good Release Note and ChangeLog for the next version.

#### Documentation

Some Pull Request contain changes that need an update of the developer documentation.

Example of such Pull Requests:
- If it contains [BC breaks][bc-break] or deprecations, they must be listed, including recommended workarounds (if any).
- If it introduces or modifies a component or subsystem — especially when theme or module developers are expected to use it.

#### Final actions

- If the Pull Request is related to an issue, check whether the issue is fixed and closed and whether it should be: some issues can get closed automatically even though the Pull Request only addresses part of the issue.
- Thank the Pull Request author and anybody else who invested notable energy into the Pull Request (code review, code suggestions, QA validation, usecase specification ...).


![Thank you message](../images/thank-you.png)

## Labeling reference

Labeling helps project members keep track of the status of Pull Requests.

Two bots monitor the project's Issues and Pull Requests on GitHub to help automate common tasks.

- [Prestonbot][prestonbot] will evaluate whether there are missing/invalid items in Pull Requests' descriptions and label them accordingly.
- [Issuebot][issuebot] helps sync the status of Issues with its linked Pull Request by applying labels and performing kaban board automation.

### Action required

The following labels are added when an action is required:

| When                                                                                       | Who is concerned |     Label<br><small>(action required)</small>      |       Label<br><small>(done)</small>        |
|--------------------------------------------------------------------------------------------|:----------------:|:--------------------------------------------------:|:-------------------------------------------:|
| The PR is waiting for the author to address feedback                                       | The PR's author  |   <label type="needs">Waiting for author</label>   |                _(no label)_                 |
| The PR must be rebased<br><small>(because of merge conflicts or wrong base branch)</small> | The PR's author  |   <label type="needs">Waiting for rebase</label>   |                _(no label)_                 |
| The PR introduced functional changes                                                       | Product Managers |     <label type="needs">Waiting for PM</label>     |      <label type="check">PM ✓</label>       |
| The PR introduced visual changes                                                           |   UX Designers   |     <label type="needs">Waiting for UX</label>     |      <label type="check">UX ✓</label>       |
| The PR introduced wording changes                                                          | Wording Managers |  <label type="needs">Waiting for Wording</label>   |    <label type="check">Wording ✓</label>    |
| The PR is ready for QA verification                                                        | Software Testers |     <label type="needs">Waiting for QA</label>     |      <label type="check">QA ✓</label>       |
| The PR needs to be documented in DevDocs                                                   |   Maintainers    | <label type="needsdoc">Needs documentation</label> | <label type="check">Documentation ✓</label> |

### Meta labels

The following labels provide metadata and are essentially informative:

| Label                                          | Meaning                                                      |
|:-----------------------------------------------|:-------------------------------------------------------------|
| <label type="type">Bug fix</label>             | This PR fixes a bug                                          |
| <label type="type">Feature</label>             | This PR introduces a new feature                             |
| <label type="type">Improvement</label>         | This PR is an improvement (e.g. performance)                 |
| <label type="type">Refactoring</label>         | This PR is a refactoring                                     |
| <label type="branch">1.7.8.x</label>           | Destination branch (e.g. 1.7.8.x, develop, ...)              |
| <label type="bcbreak">BC break</label>         | This PR includes breaking changes                            |
| <label type="keyfeature">Key feature</label>   | This PR includes a feature to be highlighted in this release |
| <label type="wip">WIP</label>                  | This PR is a work in progress                                |
| <label type="e2e">E2E</label>                  | This PR is about end-to-end automated tests                  |
| <label type="migration">migration</label>      | This PR is about the Symfony migration project               |



[contribution-guidelines]: {{< devdocs "contribute/contribution-guidelines/" >}}
[prestashop-core-repository]: https://github.com/PrestaShop/PrestaShop/
[bc-break]: https://stackoverflow.com/questions/8891005/what-does-bc-break-mean
[slack]: {{< relref "/slack/" >}}
[adr]: https://github.com/prestashop/ADR
[prestonbot]: https://github.com/PrestaShop/prestonbot
[issuebot]: https://github.com/PrestaShop/issuebot
[solid]: https://en.wikipedia.org/wiki/SOLID
[RTL]: {{< devdocs "themes/reference/rtl/" >}}
[pull-request-process]: {{< devdocs "contribute/contribution-process/how-pull-requests-are-processed/" >}}
[semver]: https://semver.org/
[dev-doc]: https://github.com/prestashop/docs
[specs]: https://github.com/PrestaShop/prestashop-specs
