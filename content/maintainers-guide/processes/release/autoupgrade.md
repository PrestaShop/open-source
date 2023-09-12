---
title: How to release a new AutoUpgrade version
---

# Release a new version of [AutoUpgrade](https://github.com/PrestaShop/autoupgrade/) module

The AutoUpgrade module is released following [the same process as the native modules][native-module-release].

However, after the release has been published, a last step is necessary.

## Mark the new version as latest

The AutoUpgrade module is able to detect whether a new version is available. If it detects a new version is available it will suggest to user to upgrade itself to the new higher version.

For example if user is using module 4.16.1 and it detects that version 4.16.3 has been published, the module will inform the user that he is using an outdated version and should perform a module upgrade to version 4.16.3 .

The detection mechanism is a simple verification of the file https://api.prestashop.com/xml/channel.xml .

Consequently when a new version of the AutoUpgrade module is published, the file https://api.prestashop.com/xml/channel.xml must be modified. It is stored in the PrestaShop API repository.

{{% notice warning %}}
**This step requires special rights.**

Ask a maintainer from the PrestaShop Company with administrative rights on the PrestaShop API repository to perform this step.
{{% /notice %}}

[native-module-release]: {{< relref "native-module.md" >}}
