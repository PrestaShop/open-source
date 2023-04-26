---
title: PrestaShop's release and support cycle
weight: 1
aliases:
  - /maintainers-guide/release-cycle/
---

# PrestaShop's release and support cycle

The PrestaShop project follows the [Semantic Versioning convention](https://semver.org) and alternates between major and minor releases.

##### Major versions

Major versions (eg. 8.0.0, 9.0.0) are important milestones. These versions contain new features, bug fixes, and above all, backward-incompatible changes that can impact modules and themes.

* **Release cycle:** every 12–18 months.
* **Support:** bug fixes until the next minor release.  

{{% notice note %}}
Example: v8.0 receives bug fixes until v8.1 is released.
{{% /notice %}}

##### Minor versions

Minor versions (eg. 8.1.0, 9.1.0) are incremental updates on the previous major release. These versions contain bug fixes and new features, while ensuring full backward compatibility. Only one minor version is published following a major version.

* **Release cycle:** 6-9 months following the previous major release.
* **Support:** bug fixes until the next major release. Critical bug fixes until the major release following it.

{{% notice note %}}
Example: v8.1 receives bug fixes until v9.0 is released. Afterward, it may only receive critical bug fixes until v10.0 is released.
{{% /notice %}}


##### Patch versions 

Patch versions (eg. 8.0.1, 9.1.3) are incremental updates to a previous release, containing bug fixes. Only supported versions are subject to patch releases. 

* **Release cycle:** about every 6 weeks, depending on the bugs' severity and the team's bandwidth.

## Roadmap

![Release cycle](../images/release-cycle.svg)

