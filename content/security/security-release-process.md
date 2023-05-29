---
title: Security release process
---

# Security release process

Here is a short summary of the steps followed by the security team:

1) Security issues is reported to security-core@prestashop.com or through the [Bug Bounty Program][bug-bounty].

2) Security issues is assessed to identify their criticality level.

- Minor issues are scoped to be fixed in the next scheduled minor release
- Critical issues are scoped to be fixed as soon as possible

3) For both minor and critical issues, a [GitHub Security Advisory](https://help.github.com/en/github/managing-security-vulnerabilities/creating-a-security-advisory
) will be created to register the issue in GitHub CVE database.

4) A [Private Security Fork](https://docs.github.com/en/github/managing-security-vulnerabilities/collaborating-in-a-temporary-private-fork-to-resolve-a-security-vulnerability) is used to prepare a patch Pull Request for the advisory. The Pull Request then reviewed and tested by QA.

5) When all patch Pull Requests are ready (in the event that multiple issues are reported), they are all merged and a new patch release is built and delivered. Security Advisories are published and the vulnerabilities are disclosed in a Release Note, urging all PrestaShop users to upgrade in order to protect their shops.

<img src="../img/security-process-2023.png" alt="Security release workflow">

[bug-bounty]: {{< relref "bug-bounty.md" >}}
