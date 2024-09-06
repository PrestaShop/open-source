---
title: PrestaShop's release and support cycle
weight: 1
aliases:
  - /maintainers-guide/release-cycle/
---

# PrestaShop's release and support cycle

The PrestaShop project follows the [Semantic Versioning convention](https://semver.org) and alternates between major and minor releases.

## Important note

While we strive to adhere to the release cycles outlined below, please note that these timelines are guidelines rather than strict rules. Various factors, such as critical updates, new feature opportunities, or unforeseen challenges, may necessitate adjustments to our planned release schedule. We are committed to maintaining transparency and will communicate any significant changes to our release cycle.

##### Major versions

Major versions (e.g., 8.0.0, 9.0.0) are important milestones. These versions contain new features, bug fixes, and above all, backward-incompatible changes that can impact modules and themes.

* **Release cycle:** every 12–18 months.
* **Support:** bug fixes until the next minor release.  

{{% notice note %}}
Example: v8.0 receives bug fixes until v8.1 is released.
{{% /notice %}}

##### Minor versions

Minor versions (e.g., 8.1.0, 8.2.0, 9.1.0) are incremental updates to the previous major version. These releases may now include multiple minor versions per major release. They contain new features and bug fixes while maintaining full backward compatibility.

* **Release cycle:** 6-9 months following the previous major release.
* **Support:** bug fixes until the next major release. Critical bug fixes until the major release following it.

{{% notice note %}}
Example: v8.1 receives bug fixes until v9.0 is released. Afterward, it may only receive critical bug fixes until v10.0 is released. If v8.2 is released, bug fixes will be delivered through v8.2 patch versions, and v8.1 will not receive patch versions anymore.
{{% /notice %}}

##### Patch versions 

Patch versions (e.g., 8.0.1, 9.1.3) are incremental updates to previous releases containing bug fixes. Only supported versions are subject to patch releases. 

* **Release cycle:** About every 6 weeks, depending on the severity of the bugs and the team's bandwidth.

## Roadmap

![Release cycle](../images/release-cycle.svg)

