---
title: What's New in PrestaShop 9.0
menu:
  main:
    parent: "Download"
    name: "What's new"
showIntroductionBanner: false
subtitle: PrestaShop 9 is a major release introducing a modernized architecture, next-gen APIs, improved performance, and flexibility.
summary: PrestaShop 9 brings Symfony 6.4 LTS, PHP 8.4 support, the new Admin API, Hummingbird theme, improved SEO and security, and a faster, fully modern back office.
---

<style>
    .hero-banner {
        background: black;
        position: relative;
        margin-bottom: 10px;
    }

    .hero-banner p {
        color: white;
    }

    .lead-text {
        align-self: center;
    }

    @media (max-width: 767px) {
        body .hero-text  {
            left: 50%;
            max-width: 180px; 
        }

        .display-3 {
            font-size: 32px;
        }

        #image-formats img {
            max-width: 100% !important; height: auto;
        }
    }

    .hero-text {
      /* position: absolute; */
      bottom: 20px;
      /* left: 65%; */
      transform: translateX(-50%);
      z-index: 1;
      color: white;
      text-align: center;
    }

    .hero-text p {
        color: white;
        font-size: 20px; font-weight: bold;
        margin-bottom: 40px;
    }

    .container-fluid.release-page {
        padding-left: 0;
        padding-right: 0;
    }

    .container-fluid.release-page-content {
        padding-left: 75px; padding-right: 75px;
    }

    .release-page-content .display-4 {
        font-weight: bolder;
    }

    .toc-sidebar {
        margin: -10px 0 0 0;
    }

    .iframe-wrapper {
      position: relative;
      width: 100%;
      padding-bottom: 56.25%; /* Aspect ratio: 16:9 */
      margin: 0 auto; /* Center the iframe-wrapper */
      overflow: hidden;
    }

    .iframe-wrapper iframe {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
    }

    .text-light li::before {
       background: #f8f9fa!important
    }

    .section-title--subtitle {
        font-size: 1.5rem;
        font-weight: bold;
        margin-bottom: 1rem;
    }
</style>
<div class="container-fluid release-page">
    <div class="hero-banner">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <img src="/releases/images/ps90/Version9Banner.png" class="img-fluid" alt="PrestaShop 9.0">
                </div>
                <div class="col-md-6 lead-text">
                    <p>
                        PrestaShop 9 brings Symfony 6.4 LTS, PHP 8.4 support, the new Admin API, Hummingbird theme, improved SEO and security, and a faster, fully modern back office. 
                    </p>
                    <p>
                        It's a major release introducing a modernized architecture, next-gen APIs, improved performance, and flexibility.
                    </p>
                    <p class="text-center mt-5">
                        <a href="https://prestashop.com/versions/" class="cta cta--pattern mr-5">
                            <span class="mb-0">
                                Download Now
                            </span>
                        </a>
                        <a href="https://build.prestashop-project.org/news/2025/prestashop-9-0-available/" class="cta cta-dark cta--pattern">
                            <span class="mb-0">
                                Release Notes
                            </span>
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2 toc-sidebar">
            <div class="toc-sidebar-content">
                <p class="h4">PrestaShop 9.0</p>
                <ul class="toc-links">
                    <li class="toc-current"><a href="#highlights">Highlights</a></li>
                    <li><a href="#core-technologies">Core technologies</a></li>
                    <li><a href="#admin-api">Admin API</a></li>
                    <li><a href="#hummingbird">Hummingbird theme</a></li>
                    <li><a href="#seo">SEO & URLs</a></li>
                    <li><a href="#ux">Back Office & UX</a></li>
                    <li><a href="#developer-features">Developer features</a></li>
                    <li><a href="#security">Security</a></li>
                    <li><a href="#updating">Update Assistant</a></li>
                    <li><a href="#resources">Resources</a></li>
                </ul>
            </div>
        </div>
        <div class="col-md-10 px-0">
            <section class="section" id="highlights">
                <div class="container-fluid release-page-content">
                    <div class="row">
                        <div class="col-md-4">
                            <h2 class="section-title">Highlights of PrestaShop 9</h2>
                            <p>
                                <ul class="list-unstyled">
                                    <li>Symfony 6.4 LTS & PHP 8.1–8.4 support</li>
                                    <li>Brand-new <strong>Admin API</strong> for easier integrations</li>
                                    <li>Hummingbird theme: modern, flexible, Bootstrap 5, TypeScript</li>
                                    <li>Improved SEO, cleaner URLs, better multi-language and category management</li>
                                    <li>Enhanced security, performance, and developer tooling</li>
                                    <li>Easier upgrades with new Update Assistant</li>
                                </ul>
                            </p>
                        </div>
                        <div class="col-md-8 text-right" style="padding: 30px;">
                            <a href="/releases/images/ps90/dashboard-more-details.png">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/dashboard-more-details.png">
                            </a>
                        </div>
                    </div>
                    <section class="section" id="core-technologies">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <p class="display-4 text-center">Core technologies</h2>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-5">
                                <h2 class="section-title">PHP 8.1-8.4 compatibilitty</h2>
                                <p>
                                    PrestaShop 9 now requires at least PHP 8.1 and brings compatibility with the most recent <a href="https://www.php.net/releases/8.4/en.php">PHP 8.4</a>. Each new PHP version introduces performance and security improvements, making it worthwhile to run PrestaShop on the most recent PHP version available. Plus, if you target the latest PHP version, you can benefit from all the <a href="https://www.php.net/releases/8.4/en.php">new language features</a>!
                                </p>
                            </div>
                            <div class="col-md-7">
                                <p class="mt-5">
                                    <div class="php-logo">
                                        <img loading="lazy" src="/releases/images/ps90/logo_php8_4.svg">
                                    </div>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <h2 class="section-title">Symfony and library upgrades</h2>
                                <p>
                                    PrestaShop 9 is built on <a href="https://symfony.com/releases/6.4">Symfony 6.4</a>, the latest long-term support (LTS) version of the framework, which ensures security updates until November 2027. This is a major leap forward from Symfony 4.4.
                                </p>
                            </div>
                            <div class="col-md-7">
                                <p class="mt-5">
                                    <img width="100%" loading="lazy" src="/releases/images/ps8/logo_symfony.svg">
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <h2 class="section-title">New Admin API: Open, Extensible, Modern</h2>
                                <p>
                                    The new Admin API, powered by <a href="https://api-platform.com/">API Platform</a>, exposes core back office features for integrations and automation through a modern, RESTful interface. It supports JSON-LD, GraphQL, and JSON:API standards, making it easy to integrate with third-party services or build custom applications.
                                </p>
                            </div>
                            <div class="col-md-7">
                                <p class="mt-5 text-center">
                                    <img style="max-width: 400px;" loading="lazy" src="/releases/images/ps90/wabby_logo_api-platform.png">
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section" id="admin-api">
                <div class="container-fluid release-page-content">
                    <div class="row">
                        <div class="col">
                            <p class="display-4 text-center">Admin API based on API Platform</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <p>
                                A newly introduced Admin API lays the groundwork for easier integrations and improved tooling by exposing essential back office capabilities in a structured, developer-friendly way.
                            </p>
                            <p>
                                The Admin API is built on <a href="https://api-platform.com/">API Platform</a>, a powerful framework for building APIs. It supports JSON-LD, GraphQL, and JSON:API standards, making it easy to integrate with third-party services or build custom applications.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/admin-api.jpeg">
                        </div>
                        <div class="col-md-6 text-center">
                            <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/admin-api2.jpeg">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <p>
                                You can read more about the Admin API in the <a href="https://devdocs.prestashop-project.org/9/admin-api/">developer documentation</a>. It includes detailed information on how to use the API, including authentication, available endpoints, and examples of requests and responses.
                            </p>
                            <p class="text-center">
                                <a target="_blank" href="https://devdocs.prestashop-project.org/9/admin-api/how-to-use/" class="cta cta-dark cta--pattern">
                                    <span class="mb-0 mr-5">
                                        Check the documentation
                                    </span>
                                </a>
                                <a target="_blank" href="https://build.prestashop-project.org/news/2024/meet-prestashop9-api/" class="cta cta-dark cta--pattern">
                                    <span class="mb-0">
                                        Check the user guide
                                    </span>
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section bg-light" id="hummingbird">
                <div class="container-fluid release-page-content">
                    <div class="row">
                        <div class="col">
                            <p class="display-4 text-center">New theme: Hummingbird</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <p>
                                The new Hummingbird theme provides a modern foundation built with Bootstrap 5, TypeScript, and BEM, giving developers a flexible, maintainable starting point for building fast, mobile-optimized storefronts.
                            </p>
                            <p>
                                While Hummingbird is not the default theme in PrestaShop 9, it sets the direction for the future of PrestaShop theming. We encourage developers to test it, build on it, and share feedback to help shape its evolution.
                            </p>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 text-center">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/hummingbird.png">
                            </div>
                            <div class="col-md-6 text-center">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/hummingbird2.png">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 text-center">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/hummingbird3.png">
                            </div>
                            <div class="col-md-6 text-center">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/hummingbird4.png">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <p>
                                Hummingbird is still in the development phase, and we welcome contributions from the community. If you're interested in helping shape the future of PrestaShop theming, please check out the <a href="https://github.com/PrestaShop/hummingbird">Hummingbird repository on GitHub</a>.
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section" id="seo">
                <div class="container-fluid release-page-content">
                    <div class="row">
                        <div class="col">
                            <p class="display-4 text-center">SEO&URLs</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <h2 class="section-title">Improved SEO in PrestaShop 9</h2>
                            <p>
                                SEO is an important aspect of any e-commerce platform, and PrestaShop 9 brings several enhancements to help merchants improve their search engine visibility.
                            </p>
                            <p>
                                <ul>
                                    <li>Product URLs are cleaner (category name removed by default, can be restored)</li>
                                    <li>Language prefixes can be omitted for default language</li>
                                    <li>Inactive categories support 301/302 redirects</li>
                                    <li>Filtered listing pages are excluded from indexing</li>
                                    <li>Native support for WebP and AVIF images for faster pages</li>
                                </ul>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps90/seo-categories.png">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/seo-categories.png">
                            </a>
                        </div>
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps90/seo-settings.png">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/seo-settings.png">
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section bg-light" id="ux">
                <div class="container-fluid release-page-content">
                    <div class="row">
                        <div class="col">
                            <p class="display-4 text-center">Back office & UX improvements</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <h2 class="section-title">New back office design</h2>
                            <p>
                                Experience a refreshed back office with a modernized design, consistent terminology, and numerous UX enhancements. The updated interface streamlines navigation and boosts productivity, all while preserving the workflows you know and trust.
                            </p>
                            <p>
                                Additionally, several extra pages have been fully migrated to Symfony. Some have transitioned from being gated behind a feature flag to being enabled by default, while others are introduced directly as default features in version 9. 
                            </p>
                        </div>
                        <div class="col-md-8">
                            <p class="mt-5">
                                <a href="/releases/images/ps90/products-edit.jpeg">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/products-edit.jpeg">
                                </a>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <h2 class="section-title">Improved shop management</h2>
                            <p>
                                PrestaShop 9 brings significant improvements to shop management, including customer management, product editing, and order management. The new architecture allows for faster loading times, smoother interactions, and a more intuitive user experience.
                            </p>
                            <p>
                                Significant improvements have been made to the customer view page. This upgrade enhances performance and dramatically improves the overall user experience.
                            </p>
                            <p>
                                There is also a new feature allows you to create guest customers from the back office, making working with manually placed orders easier.
                            </p>
                            <p>
                                <strong>Other improvements include:</strong>
                                <ul>
                                    <li>Optimized order view page</li>
                                    <li>Feature values can be sorted manually or automatically</li>
                                    <li>Product page introduced in PrestaShop 8 is now enabled for everyone</li>
                                </ul>
                            </p>
                        </div>
                        <div class="col-md-8">
                            <p class="mt-5">
                                <a href="/releases/images/ps90/orders.png">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/orders.png">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section" id="developer-features">
                 <div class="row">
                    <div class="col">
                        <p class="display-4 text-center">Developer features</h2>
                        <p class="text-center">
                            PrestaShop 9 introduces several new features and improvements for developers, making it easier to build and maintain modules, themes, and customizations. <br>
                            The main improvenet is, of course, Symfony 6.4 LTS and PHP 8.1–8.4 support, but there are also many other improvements that make the development experience smoother and more efficient.
                        </p>
                    </div>
                </div>
                <div class="container-fluid release-page-content">
                    <div class="row">
                        <div class="col-md-6">
                            <p class="section-title section-title--subtitle">Restricted access to debug mode</p>
                            <p>
                                Debug mode can now only be enabled for visitors who have a specific cookie set. This change will help you debug potential issues more effectively without compromising store stability.
                            </p>
                            <p>
                                This prevents unauthorized users from accessing some sensitive information that might be displayed in the debug mode, such as database queries, configuration details, and other sensitive information.
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p class="section-title section-title--subtitle">New hooks</p>
                            <p>
                                As with any new major release, PrestaShop 9 introduces new hooks to help developers extend the platform's functionality.
                            </p>
                            <p>
                                Some of the new hooks include:
                                <ul>
                                    <li><a href="https://github.com/PrestaShop/PrestaShop/pull/34875" target="_blank"><code>actionValidateCartRule</code></a> - custom cart rule validation from modules, allows to create infinite possibilities of rules</li>
                                    <li><a href="https://github.com/PrestaShop/PrestaShop/pull/37947"><code>actionPresentObject</code></a> - a hook that is called before an object is presented (works globally for all the ObjectPresenters)</li>
                                    <li><a href="https://github.com/PrestaShop/PrestaShop/pull/34431" target="_blank"><code>actionValidateOrderBefore</code></a> - a hook that is called before validating an order by core</li>
                                </ul>
                                <strong>A full, updated list of hooks is available <a href="https://devdocs.prestashop-project.org/9/modules/concepts/hooks/list-of-hooks/#search-for-a-hook" target="_blank">in the developer documentation</a></strong>.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p class="section-title section-title--subtitle">Symfony container in front office (experimental feature)</p>
                            <p>
                                As an experimental feature, <a href="https://github.com/PrestaShop/PrestaShop/pull/32719" target="_blank">the Symfony container can now be available in the front office</a>. This allows developers to achieve so much more with their modules, as they can now use the Symfony services in the front office.
                            </p>
                            <p>
                                This feature is still experimental, and it is not recommended to use it in production. However, it is a great way to test the new features and see how they can be used in the front office.
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p class="section-title section-title--subtitle">Extended usage of Presenters</p>
                            <p>
                                Categories, Manufacturers, Suppliers and Stores are now rendered to the front office through Presenters, which allows for more flexibility and customization in how these entities are displayed. This change also improves performance and reduces the amount of code needed to render these entities.
                            </p>
                            <p>
                                This is yet another step to unify the way objects are presented in PrestaShop, and it is a great way to improve the performance and flexibility of the platform.
                            </p>
                        </div>
                    </div>
                     <div class="row">
                        <div class="col-md-8 mx-auto">
                            <p>
                                <a href="/releases/images/ps90/debugmode.png">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/debugmode.png">
                                </a>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <p>
                                There is much more to discover in PrestaShop 9, that is why we encourage you to follow our <a href="https://build.prestashop-project.org/tag/ps9dev/">PS9dev section</a> and <a href="https://devdocs.prestashop-project.org/9/">developer documentation</a> to stay up to date with the latest features and improvements.
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section bg-light mb-0" id="security">
                <div class="container-fluid release-page-content">
                    <div class="row">
                        <div class="col">
                            <p class="display-4 text-center">Security improvements</h2>
                            <p class="text-center">There are several security improvements in PrestaShop 9 that help protect your store and customer data</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p>
                                Installer of PrestaShop will now <strong>automatically randomize prefix for database tables</strong> for you to enhance security of your PrestaShop store.
                            </p>
                            <p>
                                <strong>Direct access to some of the file types is now forbidden</strong> making PrestaShop more secure. Any .php files or other files that should not be accessed directly will now return a 403 Forbidden error if accessed directly. You should use <code>ModuleFrontController</code> or <code>ModuleAdminController</code> to access these files instead.
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p>
                                Extra logs in back koffice are available. <strong>Know exactly who installs, updates, or uninstalls modules</strong>, giving you valuable insights into your store’s performance and security. 
                            </p>
                            <p>
                                PHP 8.4 and Symfony 6.4 LTS also <strong>contribute to the overall security of PrestaShop 9</strong>, as they include numerous security fixes and improvements. By using the latest versions of these technologies, you can ensure that your store is protected against known vulnerabilities.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mx-auto">
                            <p>
                                <a href="/releases/images/ps90/security.jpeg">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/security.jpeg">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section bg-dark" id="update">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <h2 class="section-title text-light">Update Assistant</h2>
                            <p class="text-light">
                                <strong>Upgrading to PrestaShop 9 is now faster, safer, and more reliable</strong> thanks to the all-new Update Assistant. Completely rebuilt (formerly known as 1-Click Upgrade), Update Assistant 7 streamlines the entire process with:
                            </p>
                            <p class="text-light">
                                <ul class="text-light">
                                    <li>A modern, step-by-step interface for backup, update, and restore</li>
                                    <li>Command-Line Interface (CLI) support for automation and advanced workflows</li>
                                    <li>Improved performance and robustness, even for large and complex stores</li>
                                    <li>Automatic requirement checks and detailed error reporting to catch issues early</li>
                                    <li>Clear documentation to guide you at every stage</li>
                                </ul>
                            </p>
                            <p class="text-light">
                                Whether you're a merchant or developer, the Update Assistant makes it simpler to keep your shop on the latest, most secure, and feature-rich version of PrestaShop. Start planning your upgrade today and take advantage of everything PrestaShop 9 has to offer.
                            </p>
                        </div>
                        <div class="col-md-6 mt-5">
                            <div>
                                <a href="/releases/images/ps90/update-assistant.png">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/update-assistant.png">
                                </a>
                            </div>
                            <div>
                                <a href="/releases/images/ps90/update-assistant2.png">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps90/update-assistant2.png">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <p>
                                <a target="_blank" href="https://github.com/PrestaShop/autoupgrade/releases" class="cta cta-dark cta--pattern">
                                    <span class="mb-0">
                                        Download the Update Assistant
                                    </span>
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section" id="resources">
                <div class="container-fluid release-page-content">
                    <div class="row">
                        <div class="col">
                            <p class="display-4 text-center">Resources</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="section-title">Articles for developers about PrestaShop 9</h2>
                            <p>
                                On the project's build blog, you can find a series of articles that cover the new features and improvements in PrestaShop 9. These articles are aimed at developers and provide detailed information on how to use the new features, as well as tips and tricks for working with PrestaShop 9, and adapting your modules and themes to the new version.
                            </p>
                            <p>
                                <a target="_blank" href="https://build.prestashop-project.org/tag/ps9dev/" class="cta cta-dark cta--pattern">
                                    <span class="mb-0">
                                        Check the PS9Dev articles
                                    </span>
                                </a>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="section-title">Notable changes</h2>
                            <p>As with every big release, this version includes new Hooks and many other modifications aimed to improve the developer’s experience with PrestaShop. A <a href="https://devdocs.prestashop-project.org/9/modules/core-updates/9.0/">new page in the developer documentation is available</a> informing about all notable changes in PrestaShop 9.0.</p>
                            <p>
                                <a target="_blank" href="https://devdocs.prestashop-project.org/9/modules/core-updates/9.0/" class="cta cta-dark cta--pattern">
                                    <span class="mb-0">
                                        Check the notable changes
                                    </span>
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
