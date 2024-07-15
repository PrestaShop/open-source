---
title: Data transparency
---

# Data transparency

## Data collected by the PrestaShop project

The PrestaShop project may collect some data from stores running PrestaShop 8 and over for analytics purposes only. 

This data is extremely important for project members to understand how our ecosystem uses PrestaShop and make informed decisions.

PrestaShop does not collect any personal information.

### Data we collect

* PrestaShop version
* Main front office URL for the shop

### Concerned versions

PrestaShop 8 or over, running the [Distribution API client module](https://github.com/PrestaShop/ps_distributionapiclient/) v1.1.0 and above.

### When and how the data is collected

PrestaShop provides a free-of-charge service allowing stores to receive updates to the project's modules directly in the store's Back Office, through the _Distribution API client_ module. When this module is active, it will regularly ping our services to retrieve the latest available version for the project's modules. Unless you opt-out to data sharing, the aforementioned store information will be sent over to our services during this process.

Note: The PrestaShop software version will still be sent even if data sharing is turned off as it is necessary to provide the service. However, this information won't be traced back to the store's URL when data sharing is disabled.

### Who has access to the data

The raw data, including URLs, is accessible by a limited number of PrestaShop SA employees (notably to prevent abuse). Analytic digests not including URLs may be shared with all project members and sponsors.

### How to opt-out from data collection

##### Option 1: Do not use _Distribution API client_

* During install, uncheck _Distribution API client_ from the list of modules to install.
* Alternatively, uninstall the module from your store.

##### Option 2: Disable data sharing

Set the `PS_URL_TRACKING` environment variable to `false`. You can do this using the `SetEnv` Apache directive in a .htaccess file, for example.




## Data collected through the update assistant module

Technical data are collected by the PrestaShop project teams through the Update assistant module ([link](https://github.com/PrestaShop/autoupgrade)). 

These data helps the module's contributors to better understand usage and any associated errors. The aim is to enable continuous optimization of the Update assistant module, based on good data-driven decisions.

### Definition

The User is informed that the following terms or expressions will have, whenever they begin with a capital letter in the body of the Policy (including its appearances and its preamble), whether they are used in the singular or in the plural, masculine or feminine, the meaning attributed to them below:

“**SCC and/or Standard Contractual Clauses**” designates the standard contractual clauses adopted by the European Commission to regulate transfers of personal data carried out by controllers to recipients located outside the European Union.

“**Data**” means any information relating to an identified or identifiable natural person within the meaning of Article 4.1 GDPR.

“**DPA and/or Data Processing Agreement**” designates an agreement on Data processing governing the contractual relations between the Controller and its Processor.

“**Controller**” means the natural or legal person, public authority, service or other body which, alone or jointly with others, determines the purposes and means of the processing as defined in Article 4.7 of the GDPR .

“**GDPR**” means the General Data Protection Regulation 2016/679 dated April 27, 2016.

“**Processor**” means the natural or legal person, public authority, service or other body which processes personal data on behalf of the Controller as defined in Article 4.8 of the GDPR.

### Purposes & legal bases

PrestaShop project may collect your Data for the following purposes:

| Purposes | Legal bases | Details |
| --- | --- | --- |
| **Perform data analyzes**<br>→ Monitoring of the User profile (on their Back office) | **Legitimate interest** | We consider that we have a legitimate interest in carrying out data analyzes to continually improve the Update assistant module. |
| **Meet our legal requirements** | **Legal obligation** | Respond to requests from authorities, comply with laws and regulations, and respond to requests to exercise rights mentioned in the article below. |

We collect technical data on the Update assistant module with the following tools:

- **Segment** - Collection of technical data related to the use of the Update assistant module. This data will help us better understand user actions on the module (clicks on CTAs, upgrade channels used, number of successful upgrades, number of failed upgrades, etc.). Only technical data will be collected, no personal data or data allowing the identification of a physical person will be recovered.
- **Sentry -** A technical report will be collected in the event of upgrade or rollback errors, upon voluntary action by the user (via a click on the "Report a bug" CTA). This data will help us better understand the nature of the errors (module version, PrestaShop version, PHP version, etc.).

### Who process your data?

#### Processing of your Data by PrestaShop employees and our Mother Company

Your Data may be processed by PrestaShop employees as well as those of our parent company.

All employees of PrestaShop and our parent company who have access to your Data are required to respect the confidentiality of this information and to comply strictly with current data protection regulations.

We ensure that only those persons who need the data to perform their duties have access to it, and we implement all the technical and organizational measures necessary to guarantee the security of your data.

Update assistant module contributors can access these data on request to the Seamless Upgrade & Extensibility team.

#### Processing of your Data by Processors

For the purposes of our activity, and for external processing needs, your Data may be communicated to service providers.

The list of Processors is available in the Appendix.

The latter are obliged, by a DPA, to respect the confidentiality of the Data and to use it only for the purposes for which we transmit it to them. Where data is transferred outside the European Economic Area, we ensure that appropriate safeguards are in place to protect your Data, in accordance with applicable legal requirements. (signature of SCC).

### Legal disclosure

We may also disclose your Data:

- to comply with any legal mandate, law, or legal process, including governmental and regulatory requests;
- if we believe that disclosure is necessary or appropriate to protect the rights, property or safety of PrestaShop, its customers, or other stakeholders. Such disclosure includes exchanging information with other companies and organizations for the purposes of protection against fraud and counterfeiting.

### Conservation

PrestaShop only keeps your Data for the necessary period. This retention period is not the same depending on the Data in question, the nature and purpose of the collection is likely to cause this duration to vary. Likewise, certain legal obligations impose a specific retention period.

Data collected through cookies and other trackers is kept for thirteen (13) months from their collection.

When you delete or request the deletion of your Data, we ensure the effectiveness of this deletion or their conservation in anonymized form.

### Protection

Your Data is stored on secure servers and protected by firewalls and antiviruses.

We have implemented technical and organizational measures intended to guarantee the security and confidentiality of your Data against any accidental loss and any unauthorized access, use, modification, and disclosure.

Given the particularities inherent to the Internet, it is however impossible for us to guarantee optimal security of the exchange of information on this network.

We strive to protect your Data, but we cannot guarantee the absolute security of information transmitted to the Site. You agree that you transmit your Data at your own risk.

We cannot be held responsible for non-compliance with the privacy settings or security measures in place on our Sites.

As such, you agree that the security of your information is also your responsibility. For example, it is your responsibility to keep secret the password allowing you to access your User account.

Do not under any circumstances disclose it to third parties. Likewise, be careful when disclosing information in the public sections of the Site, which can be consulted by any User of the Site.

### Rights

In accordance with the provisions of the applicable Data protection regulations, in particular European Regulation 2016/679 on Data protection, you have a right of access and a right of rectification to your Data.

You also have the right to define guidelines relating to the fate of your Data in the event of death.

In addition, subject to the conditions provided for by the GDPR for the exercise of these rights, you benefit from:

- A right to erasure of your Data;
- A right to limit the processing of your Data;
- A right to object to the processing of your Data for legitimate reasons, in accordance with [article 21 of the GDPR](https://www.cnil.fr/fr/reglement-europeen-protection-donnees/chapitre3) ;
- A right to portability of the Data you have provided;

However, in accordance with article 12.6 of the GDPR, for the exercise of these rights, PrestaShop, as Controller, reserves the right to ask you to prove your identity. We inform you that the Data used to prove your identity will be deleted once we have responded to your request.

You can exercise these rights by sending an email in French, English or Spanish to [privacy@prestashop.com](mailto:privacy@prestashop.com) or to the following address:

**PrestaShop S.A Legal Department,** 198 Av. de France, 75013 Paris

We have one month to respond to any request relating to the exercise of your rights. This deadline may be extended by two months due to complexity or too many requests.

Finally, you have the right to lodge a complaint with the Commission Nationale de l’Informatique et des Libertés (CNIL), in particular on its website [www.cnil.fr](http://www.cnil.fr/).

### Annex

#### Our processors

The following Processors may process your Data:

| Processors | Services provided | Country head office |
| --- | --- | --- |
| MIXPANEL INC. | Business Analytics Platform | UNITED STATES |
| SEGMENT.IO, INC. | Business Analytics Platform | UNITED STATES |
| SENTRY INC.<br/>FUNCTIONAL SOFTWARE, INC.<br/>for Sentry | Bug finding software  | UNITED STATES |
| GOOGLE CLOUD<br/>for Looker | Business Analytics Platform  | UNITED STATES |