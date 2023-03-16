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

Note: The PrestaShop software version will still be sent even if data sharing is turned off as it necessary to provide the service. However, this information won't be traced back to the store's URL when data sharing is disabled.

### Who has access to the data

The raw data, including URLs, is accessible by a limited number of PrestaShop SA employees (notably to prevent abuse). Analytic digests not including URLs may be shared with all project members and sponsors.

### How to opt-out from data collection

##### Option 1: Do not use _Distribution API client_

* During install, uncheck _Distribution API client_ from the list of modules to install.
* Alternatively, uninstall the module from your store.

##### Option 2: Disable data sharing

Set the `PS_URL_TRACKING` environment variable to `false`. You can do this using the `SetEnv` Apache directive in a .htaccess file, for example.
