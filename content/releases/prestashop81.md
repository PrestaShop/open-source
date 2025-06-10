---
title: What's New in PrestaShop 8.1
showIntroductionBanner: false
subtitle: PrestaShop 8.1 is a minor upgrade, with major improvements. This new release brings along many time-saving features and more.
summary: PrestaShop 8.1 is a minor upgrade, with major improvements. This new release brings along many time-saving features and more.
subtitle: 
downloadUrl: https://github.com/PrestaShop/PrestaShop/releases/tag/8.1.0
---

<style>
    .hero-banner {
        height: 524px;
        background-size: cover;
        background-position: bottom center;
        position: relative;
        margin-bottom: 10px;
    }

    @media (max-width: 767px) {
        .hero-banner {
            background-position: initial;
            height: 345px;
        }

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
      position: absolute;
      bottom: 20px;
      left: 61%;
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
</style>
<div class="container-fluid release-page">
    <div class="hero-banner" style="background-image: url('/releases/images/ps81/banner.png');">
        <div class="hero-text">
            <p>PrestaShop 8.1. Minor version. Major changes.</p>
            <a href="https://github.com/PrestaShop/PrestaShop/releases/tag/8.1.0" class="cta cta--pattern">
                <span class="mb-0">
                    Download Now
                </span>
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2 toc-sidebar">
            <div class="toc-sidebar-content">
                <p class="h4">New in PrestaShop 8.1</p>
                <ul class="toc-links">
                    <li><a href="#product-page">New product page</a></li>
                    <li><a href="#product-availability">Product availability control</a></li>
                    <li><a href="#image-formats">New image formats</a></li>
                    <li><a href="#maintenance-mode">Improved maintenance mode</a></li>
                    <li><a href="#developer-features">Developer features</a></li>
                    <li><a href="#under-the-hood">Under the hood</a></li>
                </ul>
            </div>
        </div>
        <div class="col-md-10 px-0">
            <section class="section" id="product-page">
                <div class="container-fluid release-page-content">
                    <div class="row">
                        <div class="col">
                            <p class="display-4 text-center">
                                Discover the amazing new features in PrestaShop 8.1
                            </p>
                        </div>
                    </div>
                    <hr class="mb-5">
                    <div class="row">
                        <div class="col-md-4">
                            <h2 class="section-title">All-new product management page</p>
                            <p class="mb-5">
                                Managing the store's catalog has never been easier, thanks to a completely redesigned product management page. The page has been rebuilt from the ground up for increased usability and performance, allowing merchants to find their way across the page more easily and help them work more efficiently.
                            </p>
                            <p>
                                The new product management page is the result of years-long work involving in-depth interviews and collaboration with merchants from a diverse range of ecommerce backgrounds. This valuable feedback has helped craft a new page that addresses the needs of big and small businesses, making it truly versatile and efficient.
                            </p>
                            <p>In PrestaShop 8.1, if you would like, you can keep your old product page. In PrestaShop 9.0, there will be only one product management page.</p>
                        </div>
                        <div class="col-md-8 text-right">
                            <a href="/releases/images/ps81/product-page/product-page-overview.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/new-design-1.jpeg">
                            </a>
                        </div>
                    </div>
                    <hr class="mb-5 mt-5">
                    <div class="row">
                        <div class="col">
                            <p class="display-3 text-center">
                                Main improvements
                            </p>
                        </div>
                    </div>
                    <!-- COMBINATIONS -->
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <h2 class="section-title">Radically improved management of products with combinations</p>
                            <p>
                                The completely renewed combination management interface brings more efficient navigation and edition, coupled with spectacular performance improvements compared to previous PrestaShop versions. Quickly select attributes thanks to filters in the new combination generator interface, and generate hundreds of them in just a few seconds. Yes, in seconds!
                            </p>
                            <p>
                                Editing combinations has also been made easier and more powerful than ever, with a modal interface to edit individual combinations, as well as new, improved filter-based bulk actions. They make tasks like assigning images to combinations based on attributes a matter of only a few clicks. In addition, PrestaShop now displays a new progress bar while processing data, keeping the user informed of what's going on, and providing helpful information if something goes wrong.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img loading="lazy" src="/releases/images/ps81/product-page/combination-generator.svg">
                        </div>
                        <div class="col-md-6 text-center">
                            <img loading="lazy" src="/releases/images/ps81/product-page/product-with-combinations-loadtime.svg">
                        </div>
                        <div class="col-12">
                            <p class="text-muted text-center small">All results are based on tests performed on a local machine with Apple M1 Max processor and 32GB RAM. Clean PrestaShop installation, no multi-store.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps81/product-page/combinations1.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/combinations1.jpeg">
                            </a>
                        </div>
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps81/product-page/combinations2.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/combinations2.jpeg">
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps81/product-page/combinations3.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/combinations3.jpeg">
                            </a>
                        </div>
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps81/product-page/combinations4.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/combinations4.jpeg">
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <h2 class="section-title">Refined price, taxes, and stock management</p>
                            <p>
                                Merchants can optimize their pricing thanks to a redesigned price section. Information is now organized more clearly, and tax calculation has been simplified by showcasing the impact of taxes as an operation. The new summary also highlights key price information, including the calculated gross profit margin.
                            </p>
                            <p>
                                Stock management has also been significantly improved. Quantities are now modified through addition and subtraction, ensuring accurate stock calculation even when a sale occurs while the merchant is working on their product. To help understand the product's stock situation, this section now also displays the last five stock movements, including order-related stock changes such as sales and product returns.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps81/product-page/product-prices.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/product-prices.jpeg">
                            </a>
                        </div>
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps81/product-page/product-stock.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/product-stock.jpeg">
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <h2 class="section-title">More efficient and quicker image management</p>
                            <p>
                                Bulk actions for image management now make performing repetitive tasks much faster. In addition, replacing existing images is now possible, saving merchants the trouble of having to rewrite captions and reassigning images to combinations or stores.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps81/product-page/product-images-1.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/product-images-1.jpeg">
                            </a>
                        </div>
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps81/product-page/product-images-2.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/product-images-2.jpeg">
                            </a>
                        </div>
                    </div>
                    <!-- MULTISTORE -->
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <h2 class="section-title">Manage multistore products is now easier and more intuitive</p>
                            <p>
                                Assigning products to a specific store, understanding when you are accessing products not associated with the current store, and managing products across multiple stores have been made easier and more intuitive.
                            </p>
                            <p>
                                A dedicated checkbox allows you to choose whether to apply changes to the current store or to all stores. Assigning a product to a store is now done through the new multistore header, ensuring that no products are accidentally created in a new store.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps81/product-page/multistore1.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/multistore1.jpeg">
                            </a>
                        </div>
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps81/product-page/multistore2.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/multistore2.jpeg">
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <p>
                                The product listing experience has been enhanced for multistore. When in the all-store view, products are now consolidated into a single line for each product, which can be expanded to preview product details for each individual store, enabling merchants to see differences at a glance.
                            </p>
                            <p>
                                When in multistore mode, actions in the product list now adapt dynamically based on your multistore selection, and any change made will impact all associated stores, ensuring a consistent and seamless update across your entire store network.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <a href="/releases/images/ps81/product-page/multistore3.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/multistore3.jpeg">
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <h2 class="section-title">Choosing and changing product type</p>
                            <p>
                                Creating a new product is now easier than ever. A handy new popup helps you choose and understand the product type that best fits your needs – right from the start. If you change your mind, modifying a product's type has also been made easier.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps81/product-page/product-types-1.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/product-types-1.jpeg">
                            </a>
                        </div>
                        <div class="col-md-6 text-right">
                            <a href="/releases/images/ps81/product-page/product-types-2.jpeg">
                                <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/product-types-2.jpeg">
                            </a>
                        </div>
                    </div>
                    <hr class="mb-5 mt-5">
                    <div class="row">
                        <div class="col">
                            <p class="display-3 text-center">
                                Want to learn more about the new product page?
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="iframe-wrapper">
                                <iframe src="https://www.youtube.com/embed/XguCHCNlthA?start=2728" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <hr class="mb-5">
            <p class="display-3 text-center">
                Other notable features in PrestaShop 8.1
            </p>
            <section class="section" id="product-availability">
                <div class="container-fluid release-page-content">
                    <h2 class="section-title">Product availability control and SEO</h2>
                    <div class="row">
                        <div class="col-md-6">
                            <p>
                                PrestaShop 8.1 introduces the ability to set unique availability labels for each product combination. For example, a merchant selling various t-shirt sizes can now display different availability information for each size, allowing them to provide their customers with a more accurate estimation of delivery times.
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p>
                                It is now possible to globally configure the behavior for all disabled products, between an error page or a "discontinued product" page, and customize the HTTP response code to suit their SEO strategy.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div id="product-availability-carousel" class="carousel slide" data-ride="carousel">
                              <!-- The slideshow -->
                              <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <a href="/releases/images/ps81/product-page/availability1.jpeg">
                                        <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/availability1.jpeg">
                                    </a>
                                </div>
                                <div class="carousel-item">
                                    <a href="/releases/images/ps81/product-page/availability2.jpeg">
                                        <img loading="lazy" class="image-with-shadow" src="/releases/images/ps81/product-page/availability2.jpeg">
                                    </a>
                                </div>
                              </div>
                              <!-- Left and right controls -->
                              <a class="carousel-control-prev" href="#product-availability-carousel" data-slide="prev">
                                <span class="carousel-control-prev-icon"></span>
                              </a>
                              <a class="carousel-control-next" href="#product-availability-carousel" data-slide="next">
                                <span class="carousel-control-next-icon"></span>
                              </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section bg-light" id="image-formats">
                <div class="container-fluid release-page-content">
                    <div class="row">
                        <div class="col-md-6">
                            <h2 class="section-title">Experimental feature: new image formats</h2>
                            <p>
                                PrestaShop 8.1 introduces experimental support for the Avif image format, as well as converting existing images to more than one format. Having images in multiple formats allows themes to implement the `<picture>` tag to let the browser choose the best image size and format according to the screen size and system support.
                            </p>
                            <p>
                                <b>Please note that experimental features can be enabled through the Advanced Parameters section under the "New & Experimental Features" option.</b>
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p class="text-center mt-5 mb-5">
                                <a href="/releases/images/ps8/logo_svg.svg">
                                    <img loading="lazy" src="/releases/images/ps81/avif-logo.svg" style="max-width: 300px;">
                                </a>
                            </p>
                            <p class="text-center">
                                <a href="/releases/images/ps8/logo_webp.png">
                                    <img loading="lazy" src="/releases/images/ps8/logo_webp.png" style="max-width: 350px;">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section section-wide" id="maintenance-mode">
                <div class="container-fluid release-page-content">
                    <div class="row">
                        <div class="col-md-10 mx-auto">
                            <h2 class="section-title">Simpler access to shops when in maintenance mode</h2>
                            <p>
                                In PrestaShop 8.1, authenticated back office users can now access the front office even when maintenance mode is enabled, without having to whitelist their IP addresses beforehand.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <p>
                                <a href="/releases/images/ps81/maintenance-mode.jpeg">
                                    <img class="image-with-shadow" loading="lazy" src="/releases/images/ps81/maintenance-mode.jpeg">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section pt-0" id="developer-features">
                 <div class="row">
                    <div class="col">
                        <p class="display-4 text-center">Developer features</h2>
                    </div>
                </div>
                <div class="container-fluid release-page-content">
                     <div class="row">
                        <div class="col-md-4">
                            <h2 class="section-title">Easier access to performance profiler</h2>
                            <p>
                                Developers can now enable the performance profiler directly from the Back office, instead of having to manually edit a file to activate this feature.
                            </p>
                        </div>
                        <div class="col-md-8">
                            <p class="mt-5">
                                <a href="/releases/images/ps81/profiler.jpeg">
                                    <img loading="lazy" src="/releases/images/ps81/profiler.jpeg">
                                </a>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h2 class="section-title">Improved Symfony service configuration</h2>
                            <p>
                                PrestaShop 8.1 simplifies Symfony service configuration for PrestaShop modules. 
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <p>This version makes it possible for modules to use some popular Symfony features, such as applying a <a href="https://symfony.com/blog/new-in-symfony-3-3-simpler-service-configuration#interface-based-service-configuration">configuration based on extended classes or implemented interfaces</a>, <a href="https://symfony.com/blog/new-in-symfony-3-3-simpler-service-configuration#interface-based-service-configuration">autoconfiguration</a>, and <a href="https://symfony.com/blog/new-in-symfony-3-3-psr-4-based-service-discovery">automatically registering classes found in specified directories as services</a>. It is possible to use them now! Additionally, this new version also resolves the issue of <a href="https://symfony.com/doc/4.4/service_container/autowiring.html">autowiring</a> not being available in the front office and WebService context.</p>
                        </div>
                        <div class="col-md-8">
                            <p>
{{< highlight yaml "linenos=table" >}}
services:
  _defaults:
    autowire: true
    bind:
      $elements: !tagged test_module.instance_of.instance_of_tagged

  _instanceof:
    TestModule\InstanceofConditionals\Collection\ElementInterface:
      tags: [ test_module.instance_of.instance_of_tagged ]{{< / highlight >}}
                            </p>
                            <p>Check the <a href="https://devdocs.prestashop-project.org/8/modules/concepts/services/#advanced-services-parameters-_instanceof-or-interface-binding-manual-tags">developer documentation</a> for more information</p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section" id="under-the-hood">
                <div class="container-fluid release-page-content">
                    <div class="row">
                        <div class="col">
                            <p class="display-4 text-center">Under the hood</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="section-title">New product page</h2>
                            <p>The completely redesigned product page in PrestaShop 8.1 may require migration for some existing solutions. To ensure a smooth transition, we've crafted a comprehensive guide detailing how to migrate your solutions from the old page to the new one introduced in PrestaShop 8.1. </p>
                            <p>
                                <a href="https://devdocs.prestashop-project.org/8/modules/sample-modules/extend-product-page/" class="cta cta-dark cta--pattern">
                                    <span class="mb-0">
                                        Check the guide
                                    </span>
                                </a>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="section-title">Notable changes</h2>
                            <p>As with every big release, this version includes new Hooks and many other modifications aimed to improve the developer’s experience with PrestaShop. A <a href="https://devdocs.prestashop-project.org/8/modules/core-updates/8.1/">new page in the developer documentation is available</a> informing about all notable changes in PrestaShop 8.1.</p>
                            <p>
                                <a href="https://devdocs.prestashop-project.org/8/modules/core-updates/8.1/" class="cta cta-dark cta--pattern">
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
