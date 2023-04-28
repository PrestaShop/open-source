---
title: What's New in PrestaShop 8.1
menu:
  main:
    parent: "Download"
    name: "What's new"
showIntroductionBanner: false

subtitle: 
summary: PrestaShop 8 is a major update that brings an updated Symfony 4.4 version, compatibility with PHP 8.1, new password policy and session management features, support for WebP, and more.
downloadUrl: https://github.com/PrestaShop/PrestaShop/releases/
---

<style>
    .hero-banner {
        height: 524px;
        background-size: cover;
        background-position: bottom center;
        position: relative;
        margin-bottom: 10px;
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
            <p>The next PrestaShop 8 is now ready, (not so) minor version 8.1 is available to download!</p>
            <a href="" class="btn btn-primary btn-lg">Download Now</a>
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
                            <h2 class="section-title">All-new product page</p>
                            <p class="mb-5">
                                Managing the store's catalog has never been easier, thanks to a completely redesigned product management page. The page has been rebuilt from the ground up for increased usability and performance, allowing merchants to find their way across the page more easily, and help them work more efficiently.
                            </p>
                            <p>
                                The new product management page is the result of years-long work involving in-depth interviews and collaboration with merchants from a diverse range of e-commerce backgrounds. This valuable feedback has helped craft a new page that addresses the needs of big and small businesses, making it truly versatile and efficient.
                            </p>
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
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <h2 class="section-title">Choosing & changing product type</p>
                            <p>
                                Creating a new product is now easier than ever. A handy new popup helps choose and understand the product type that best fits your need – right from the start. If you change your mind later on, modifying a product's type has also been made easier.
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
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <h2 class="section-title">Improved price and stock management</p>
                            <p>
                                Merchants can optimize their pricing thanks to a redesigned price section. Information is now organized more clearly, and tax calculation has been simplified by showcasing the impact of taxes as an operation. The new summary also highlights key price information, including the calculated gross profit margin.
                            </p>
                            <p>
                                Stock management has also been significantly improved. Quantities are now handled through addition and subtraction, ensuring accurate stock calculation even when a sale occurs while the merchant is working on their product. To help understand the product's stock situation, this section now also displays the last five stock movements, including order-related stock changes such as sales and product returns.
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
                            <h2 class="section-title">Improved image management</p>
                            <p>
                                Handling product images has been made more efficient. It's now possible to replace existing images, saving merchants the trouble of having to rewrite captions and reassigning images to combinations or stores. The introduction of bulk actions for image management now makes performing repetitive tasks much faster.
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
                    <!-- COMBINATIONS -->
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <h2 class="section-title">Radically improved management of products with combinations</p>
                            <p>
                                The completely renewed combination management interface brings more efficient navigation and edition, coupled with spectacular performance improvements compared to previous PrestaShop versions. Quickly select attributes thanks to filters in the new combination generator interface, and generate hundreds of them in only a few seconds.
                            </p>
                            <p>
                                Editing combinations has been made easier and more powerful than ever, with a modal interface to edit individual combinations, and new and improved filter-based bulk actions, which make tasks like assigning images to combinations based on attributes a matter of only a few clicks. In addition, a new progress bar is displayed while PrestaShop is crunching data, keeping the user informed of what's going on, and providing helpful information if something goes wrong.
                            </p>
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
                    <!-- MULTISTORE -->
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <h2 class="section-title">Manage multistore products like never before</p>
                            <p>
                                Assigning products to a specific store, understanding when you are accessing products not associated with the current store, and managing products across multiple stores has been made easier and more clear.
                            </p>
                            <p>
                                A dedicated checkbox allows to choose whether to apply changes to the current store or to all stores. Assigning a product to a store is now done through the new multistore header, ensuring that no products are accidentally created in a new store accidentally.
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
                                Manage your products across multiple stores with our enhanced product list feature. In the all-store view, all products are consolidated into one line, enabling you to quickly preview and verify list information by store. This quick preview feature simplifies your multistore product management experience.
                            </p>
                            <p>
                                The actions in the product list adapt dynamically based on your multistore selections. When managing products in multistore mode, any changes made will impact all associated stores, ensuring a consistent and seamless update across your entire store network.
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
                The rest of PrestaShop 8.1 features
            </p>
            <section class="section" id="product-availability">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <h2 class="section-title">Products availability control</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p>
                                 PrestaShop 8.1 introduces the ability to set unique availability labels for each product combination, offering greater customization than ever before. For example, a merchant selling various sizes of a t-shirt can now display different availability information for each size. This added flexibility enables you to keep your customers better informed about product delivery times.
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p>
                                Effortlessly manage your product availability with the improved configuration for inactive products. PrestaShop 8.1 adds a new field to the settings, allowing you to easily set a default value for all inactive products, such as "410 Gone." Customize the HTTP response to suit your SEO strategy, and gain better control over backorder statuses with our streamlined interface.
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
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <h2 class="section-title">New image formats</h2>
                            <p>
                                PrestaShop 8.1 now supports converting existing images to WebP and the newly-added format Avif. Images are saved with their appropriate extensions, such as .webp for WebP and .png for PNG, providing a more efficient storage solution.
                            </p>
                            <p>
                                New version also has multiple image format generation, allowing browsers to choose the optimal format for a seamless browsing experience.
                            </p>
                            <p>
                                <b>Please note that this feature is currently experimental and can be enabled through the Advanced Parameters section under the "New & Experimental Features" option. </b>
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
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-10 mx-auto">
                            <h2 class="section-title">Improved maintenance mode</h2>
                            <p>
                                Starting from 8.1, employees can now access the front office even when maintenance mode is enabled. Previously, employees were required to provide their IP addresses to gain access to the front office during maintenance mode. It is no longer required, as you can simply allow all employees to access the front office during maintenance mode.
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
                <div class="container">
                     <div class="row">
                        <div class="col-md-4">
                            <h2 class="section-title">Store profiler management from the back office</h2>
                            <p>
                                In previous versions, it was only possible to enable the profiler by manually editing a file. PrestaShop 8.1 now allows developers to enable store profiler directly from the Back office, making the process quicker and more convenient.
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
                            <p>This version makes it possible to use some popular features introduced in Symfony 3.3, such as applying a <a href="https://symfony.com/blog/new-in-symfony-3-3-simpler-service-configuration#interface-based-service-configuration">configuration based on extended classes or implemented interfaces</a>, <a href="https://symfony.com/blog/new-in-symfony-3-3-simpler-service-configuration#interface-based-service-configuration">autoconfiguration</a>, and <a href="https://symfony.com/blog/new-in-symfony-3-3-psr-4-based-service-discovery">automatically registering classes found in specified directories as services</a>. It is possible to use them now!. Additionally, this new version also resolves the issue of <a href="https://symfony.com/doc/4.4/service_container/autowiring.html">autowiring</a> not being available in the front office and WebService context.</p>
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
                            <p>Check the <a href="https://devdocs.prestashop-project.org/8/modules/concepts/services/#advanced-services-parameters-_instanceof-or-interface-binding-manual-tags">developer documentation</a> for more infromation</p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section" id="under-the-hood">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <p class="display-4 text-center">Under the hood</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="section-title">New product page</h2>
                            <p>The completely redesigned product page in PrestaShop 8.1 may require migration for some existing solutions. To ensure a smooth transition, we've crafted a comprehensive guide detailing how to migrate your solutions from the old page to the new one introduced in PrestaShop 8.1. </p>
                            <p><a href="https://devdocs.prestashop-project.org/8/modules/sample-modules/extend-product-page/" class="btn btn-primary">Check the guide</a></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="section-title">Notable changes</h2>
                            <p>As with every big release, this version includes new Hooks and many other modifications aimed to improve the developer’s experience with PrestaShop. A <a href="https://devdocs.prestashop-project.org/8/modules/core-updates/8.1/">new page in the developer documentation is available</a> informing about all notable changes in PrestaShop 8.1.</p>
                            <p><a href="https://devdocs.prestashop-project.org/8/modules/core-updates/8.1/" class="btn btn-primary">Check the notable changes</a></p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
