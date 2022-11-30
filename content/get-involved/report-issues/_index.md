---
title: How to use GitHub to report an issue
---

# How to use GitHub to report an issue

PrestaShop uses GitHub issues to track bugs and feature requests. This is the best place to report the bugs you are witnessing on your PrestaShop shop.

{{% notice tip %}}
You need a free GitHub account to collaborate. If you don't have one yet, you can [create it here](https://github.com/join).
{{% /notice %}}

## Creating an issue

To create your first issue, go to the [list of issues](https://github.com/PrestaShop/PrestaShop/issues) and click on the "New issue" button on the right. Or just [click here](https://github.com/PrestaShop/PrestaShop/issues/new/choose).

<img src="img/github-new-issue.png" alt="Click on the New issue button" class="mx-lg-4" style="max-width: 700px">

On the next screen, choose "Bug report" and click on "Get started"

<img src="img/github-select-issue-type.png" alt="Choose Bug report" class="mx-lg-4" style="max-width: 700px">

Now fill out the form and click the "Submit new issue" button when you are done.

## Best practices for writing an issue

When writing a bug report, please use these guidelines:

- **Make sure you can reproduce your bug every time.** A bug that can't be reproduced reliably cannot be fixed.
- **Make sure your software is up to date.** Ideally, test the latest [nightly build development version](https://nightly.prestashop.com/) to see whether your bug has already been fixed.
- **Search in GitHub issues to see if your bug has already been reported.**
- **Write a clear summary** and describe what is wrong with the observed result. Above all, remember to explain what you would expect to happen instead!
- **Write precise steps to reproduce.** Be specific and verbose: do not fear to give details on how you did reproduce the bug.

{{% notice tip %}}
GitHub provides very good documentation about how to write [issues](https://guides.github.com/features/issues/) with its [flavoured Markdown](https://github.github.com/gfm/). It is possible to [highlight code syntax](https://help.github.com/articles/creating-and-highlighting-code-blocks/), [add pictures](https://help.github.com/articles/file-attachments-on-issues-and-pull-requests/), or even to [link issues and pull requests](https://help.github.com/articles/autolinked-references-and-urls/).
{{% /notice %}}

## What happens after you submit your issue

If your issue can be reproduced using a clean install, it is likely that the problem effectively is due to a software defect.
In that case, the bug will receive a severity classification, and be marked as "Verified" so that it can be picked up by a contributor and fixed in a future release. 

Although higher severity bugs are more likely to be fixed quickly, PrestaShop remains a community-built project, and therefore there is no guarantee about when a given bug will be fixed by a contributor. Consequently, the best way to make sure that a bug is fixed quickly is to fix it yourself, or hire a specialist to do it for you. 

If you get a bug fixed, please consider submitting a Pull Request to integrate it into the project. 

To find out more, read [How issues are sorted]({{< relref "how-issues-are-sorted" >}}).
