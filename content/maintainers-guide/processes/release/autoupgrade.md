---
title: How to release a new Update Assistant version
---

# Release a new version of Update Assistant

New versions of Update Assistant ([`autoupgrade` module](https://github.com/PrestaShop/autoupgrade/)) are released following [the same process as the native modules][native-module-release].

However, after the release has been published, more steps can be necessary.

## Mark the new version as latest

Update Assistant can determine whether a newer version is recommended. When the current version is older than the recommended one, the module suggests upgrading to the latest version. Given the critical nature of the process, this check ensures updates are performed with all the latest improvements and bug fixes.

For example, if a user is using version 7.0.0 and version 7.0.1 has been released, the module will inform the user that they are using an outdated version and should update.

<img src="../../../images/autoupgrade-update-needed.png" alt="Update of the module needed">

This detection mechanism is based on the contents of the [`/autoupgrade`](https://api.prestashop-project.org/autoupgrade) endpoint of the Distribution API.

The file maps ranges of PrestaShop versions to a recommended version of Update Assistant. This allows the module to:
* Warn users when their current version is outdated,
* Ensure updates are only allowed if the PrestaShop version falls within one of the defined ranges.

To enable this check, update the contents of the closest exising version entry. For instance:

```json
{
    "prestashop_min": "1.7.0.0",
    "prestashop_max": "8.2.1",
    "autoupgrade_recommended": {
        "last_version": "7.0.0",
        "download": {
            "link": "https://github.com/PrestaShop/autoupgrade/releases/download/v7.0.0/autoupgrade-v7.0.0.zip",
            "md5": "c0d83aea9dbb03d7f2f698d011144d43"
        },
        "changelog": "https://build.prestashop-project.org/news/2025/autoupgrade-v7.0-release/"
    }
}
```

If the new module version supports a different range of PrestaShop versions, you’ll need to add a new entry.

The updated file will be published as part of the API release.

[native-module-release]: {{< relref "native-module.md" >}}
