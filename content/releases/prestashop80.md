---
title: What's New in PrestaShop 8.0
weight: 12
subtitle: PrestaShop 8 is a major update that brings an updated Symfony 4.4 version, compatibility with PHP 8.1, new password policy and session management features, support for WebP, and more.
downloadUrl: https://github.com/PrestaShop/PrestaShop/releases/
---
<style>
    p { font-size: 18px; }
    .toc-sidebar {
        padding: 50px; margin: -30px 0 0 0;
        border-right: 1px solid #f0f0f0;
    }

    .toc-sidebar-content { 
        position: sticky; top: 25px;
    }
    
    .toc-links li:before {
       content: none!important;
    }

    .toc-current {
        font-weight: bold;
    }

    .image-with-shadow {
        box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
    }

    .video-wrapper {
        max-width: 100%;
    }

    .php-logo {
        max-width: 450px;
        margin: auto;
        display: flex; 
        height: 50%;
        padding: 10%; 
        background: #4F5B93;
        align-content: center;
        justify-content: center;
    }

    .php-logo > img {
        margin-bottom: 0;
    }

    .os-logo {
        max-height: 250px; max-width: 100%;
    }

    .carousel-indicators li:before {
        display: none;
    }

   .carousel-control-prev {
        left: -110px;
    }

    .carousel-control-next-icon,
    .carousel-control-prev-icon {
        width: 35px; height: 35px;
    }
 
   .carousel-control-next {
        right: -110px;
    }

    .carousel-inner {
        text-align: center;
    }

    .carousel-control-next,
    .carousel-control-prev {
        border-bottom: 0 !important;
    }

    .release-page a {
        border-bottom: 0 !important;
    }

    #seo-optimization-carousel .carousel-control-next,
    #seo-optimization-carousel .carousel-control-prev {
        filter: invert(100%);
        color: #000;
    }

    .carousel-inner img {
        width: auto;
        height: 500px;
        max-height: 500px;
    }

    .carousel-inner video {
        width: auto;
        height: 497px;
        max-height: 497px;
    }

    @media only screen and (max-width: 767px) {
        .display-4 {
            font-size: 36px;
        }

        .toc-sidebar {
            padding: 15px 25px 0;
        }

        .section {
            padding-top: 15px; padding-bottom: 15px;
        }

        .content * {
            margin-bottom: 10px;
        }

        .carousel-control-prev {
            left: -35px;
        }

        .carousel-control-next {
            right: -35px;
        }

        .carousel-inner img {
            width: auto;
            height: 250px;
            max-height: 250px;
        }

        .carousel-inner video {
            width: auto;
            height: 248px;
            max-height: 248px;
        }
    }
</style>
<script>
    window.addEventListener('DOMContentLoaded', () => {
      const observer = new IntersectionObserver(entries => {
        entries.forEach(entry => {
          const id = entry.target.getAttribute('id');
          
          if (entry.intersectionRatio > 0) {
            let currentEl = document.querySelector('.toc-current');
            if (currentEl) {
                currentEl.classList.remove('toc-current');
            }
            document.querySelector(`.toc-links li a[href="#${id}"]`).parentElement.
            classList.add('toc-current');
          } else {
            document.querySelector(`.toc-links li a[href="#${id}"]`).parentElement.classList.remove('toc-current');
          }
        });
      });

      document.querySelectorAll('section[id]').forEach((section) => {
        observer.observe(section);
      });
  
    });
</script>
<div class="container-fluid release-page">
    <div class="row">
        <div class="col-md-2 toc-sidebar">
            <div class="toc-sidebar-content">
                <p class="h4">What's new in PrestaShop 8?</p>
                <ul class="toc-links">
                    <li><a href="#security-page">Security page</a></li>
                    <li><a href="#password-strength-indicator">Password strength indicator</a></li>
                    <li><a href="#image-formats">Image formats</a></li>
                    <li><a href="#product-page">Product page (experimental)</a></li>
                    <li><a href="#seo-optimization">SEO optimization</a></li>
                    <li><a href="#multistore">Multistore</a></li>
                    <li><a href="#dkim">DKIM</a></li>
                    <li><a href="#installer">Installer</a></li>
                    <li><a href="#webservice">Webservice</a></li>
                    <li><a href="#media-versioning">Media versioning</a></li>
                    <li><a href="#cli">CLI</a></li>
                    <li><a href="#partial-updates">Partial updates in ObjectModel</a></li>
                    <li><a href="#under-the-hood">Under the hood</a></li>
                </ul>
            </div>
        </div>
        <div class="col-md-10 px-0">
            <section class="section" id="security-page">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <p class="display-4 text-center">Main features</h2>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-md-4">
                            <h2 class="section-title">Security page</p>
                            <p class="mb-5">
                                PrestaShop 8 brings a new security page, with two important new features.
                            </p>
                            <p>
                                <strong>Configure your shop password policy</strong> by choosing between five increasing levels of complexity. This will allow shop administrators to fine-tune how strict they want to be about their users' passwords and find the exact balance between rememberability and security.
                            </p>
                            <p>
                                <strong>Manage your customer and employee sessions.</strong> Shop administrators can now see the history of users' sessions, and disconnect them remotely if needed. In addition, outdated sessions can be quickly cleaned-up from history to reduce database clutter.
                            </p>
                        </div>
                        <div class="col-md-8 text-right">
                            <p class="mt-5">
                                <a href="/releases/images/ps8/security_page.jpeg">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps8/security_page.jpeg">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section bg-light" id="password-strength-indicator">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <h2 class="section-title">Password strength indicator</h2>
                            <p class="mb-5">
                                Users now receive real-time cues of their chosen password’s strength.
                            </p>
                            <p>
                                When setting up their passwords, users now see a color-coded cue to help them understand if their password is strong enough, depending on the shop’s password policy. Note: themes must be updated to support this feature. <a href="https://github.com/PrestaShop/PrestaShop/pull/28127">Learn more about it here</a>.
                            </p>
                        </div>
                        <div class="col-md-8 text-right">
                            <p class="mt-5">
                                <a href="/releases/images/ps8/password_indicator.jpeg">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps8/password_indicator.jpeg">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section" id="image-formats">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <h2 class="section-title">Image formats</h2>
                            <p>
                                <strong>Uploaded images can now be saved in the modern WebP format.</strong> WebP provides better compression than JPEG and PNG for the same image quality: smaller files mean pages will load faster. You can configure this option in <em>Design > Image Settings > Image generation options</em>.
                            </p>
                            <p><strong>It is now possible to use SVG files for your shop’s logo</strong> in addition to classic bitmap images. <a href="https://github.com/PrestaShop/PrestaShop/pull/23959">Learn more about this feature here.</a> 
                        </div>
                        <div class="col-md-6">
                            <p class="text-center">
                                <a href="/releases/images/ps8/logo_svg.svg">
                                    <img loading="lazy" src="/releases/images/ps8/logo_svg.svg" style="max-width: 200px;">
                                </a>
                            </p>
                            <p class="text-center">
                                <a href="/releases/images/ps8/logo_webp.png">
                                    <img loading="lazy" src="/releases/images/ps8/logo_webp.png" style="max-width: 275px;">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section bg-dark" id="product-page">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <h2 class="section-title text-light">Product page (experimental)</h2>
                            <p class="text-light">
                                <strong>The new back office product page</strong> introduced in PrestaShop 1.7.8 has been significantly improved for this version. The page has been reorganized, combination management has been improved, and bulk edition has been enhanced. 
                            </p>
                            <p class="text-light">
                                This new product page doesn’t include all the features of the standard product page yet (in particular, multishop support), so it remains disabled by default. You can activate it in <em>Advanced Parameters > Experimental features</em>.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div id="experimental-product-page-carousel" class="carousel slide" data-ride="carousel">
                              <!-- Indicators -->
                              <ul class="carousel-indicators">
                                <li data-target="#experimental-product-page-carousel" data-slide-to="0" class="active"></li>
                                <li data-target="#experimental-product-page-carousel" data-slide-to="1"></li>
                                <li data-target="#experimental-product-page-carousel" data-slide-to="2"></li>
                              </ul>
                              <!-- The slideshow -->
                              <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <video loading="eager" class="video-wrapper image-with-shadow" autoplay loop controls>
                                        <source src="/releases/images/ps8/product_experimental.mp4" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                </div>
                                <div class="carousel-item">
                                    <a href="/releases/images/ps8/product_experimental2.jpeg">
                                        <img loading="lazy" class="image-with-shadow" src="/releases/images/ps8/product_experimental2.jpeg">
                                    </a>
                                </div>
                                <div class="carousel-item">
                                    <a href="/releases/images/ps8/product_experimental3.jpeg">
                                        <img loading="lazy" class="image-with-shadow" src="/releases/images/ps8/product_experimental3.jpeg">
                                    </a>
                                </div>
                              </div>
                              <!-- Left and right controls -->
                              <a class="carousel-control-prev" href="#experimental-product-page-carousel" data-slide="prev">
                                <span class="carousel-control-prev-icon"></span>
                              </a>
                              <a class="carousel-control-next" href="#experimental-product-page-carousel" data-slide="next">
                                <span class="carousel-control-next-icon"></span>
                              </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section" id="seo-optimization">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <h2 class="section-title">Search Engine Optimization</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p>
                                <strong>Additional description for categories:</strong> enhance your category pages’ visibility by including a block of search engine optimized text at the bottom of the page.
                            </p>
                            <p>
                                <strong>Prevent search engine crawlers from indexing discontinued products</strong> by setting up the “410 – Gone” status code on your discontinued products, instead of using “404 – Not Found”.
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p>
                                <strong>Page number is now included in meta title tags</strong> on paginated pages, like <em>new products</em>, <em>best sales</em>, <em>prices drop</em>, and others. This should help search engines understand these pages better.
                            </p>
                            <p>
                                <strong>Content length suggestions.</strong> Some text fields in SEO, traffic and CMS sections now include live character counters to help merchants avoid going over the recommended content length limit.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div id="seo-optimization-carousel" class="carousel slide" data-ride="carousel">
                              <!-- Indicators -->
                              <ul class="carousel-indicators">
                                <li data-target="#seo-optimization-carousel" data-slide-to="0" class="active"></li>
                                <li data-target="#seo-optimization-carousel" data-slide-to="1"></li>
                                <li data-target="#seo-optimization-carousel" data-slide-to="2"></li>
                              </ul>
                              <!-- The slideshow -->
                              <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <a href="/releases/images/ps8/seo_extra_description.jpeg">
                                        <img loading="lazy" class="image-with-shadow" src="/releases/images/ps8/seo_extra_description.jpeg">
                                    </a>
                                </div>
                                <div class="carousel-item">
                                    <a href="/releases/images/ps8/seo_410gone.jpeg">
                                        <img loading="lazy" class="image-with-shadow" src="/releases/images/ps8/seo_410gone.jpeg">
                                    </a>
                                </div>
                                <div class="carousel-item">
                                    <a href="/releases/images/ps8/seo_cms.jpeg">
                                        <img loading="lazy" class="image-with-shadow" src="/releases/images/ps8/seo_cms.jpeg">
                                    </a>
                                </div>
                              </div>
                              <!-- Left and right controls -->
                              <a class="carousel-control-prev" href="#seo-optimization-carousel" data-slide="prev">
                                <span class="carousel-control-prev-icon"></span>
                              </a>
                              <a class="carousel-control-next" href="#seo-optimization-carousel" data-slide="next">
                                <span class="carousel-control-next-icon"></span>
                              </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section bg-light" id="multistore">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <h2 class="section-title">Multistore</h2>
                            <p class="mb-5">
                                Many pages in the back office have been updated for multistore compatibility, allowing merchants to choose which fields to update when in shop or group context.
                            </p>
                        </div>
                        <div class="col-md-8">
                            <p class="mt-5">
                                <a href="/releases/images/ps8/multistore.jpeg">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps8/multistore.jpeg">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section" id="dkim">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <h2 class="section-title">DKIM signatures for emails</h2>
                            <p>
                                <strong>Reduce the likelihood of your shop’s emails being marked as spam</strong> by using <a href="https://en.wikipedia.org/wiki/DomainKeys_Identified_Mail">DKIM</a> signatures. This can be configured in <em>Advanced Parameters > E-mail</em>.
                            </p>
                        </div>
                        <div class="col-md-8">
                            <p class="mt-5">
                                <a href="/releases/images/ps8/dkim.jpeg">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps8/dkim.jpeg">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section bg-light" id="installer">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <h2 class="section-title">Installer</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p>
                                <strong>Reduce clutter by choosing which modules and themes to install</strong> during the shop’s installation process.
                            </p>
                            <p>
                                <strong>Customize your distribution.</strong> During the shop’s installation, any modules, themes present in the shop’s modules and themes directories will be installed by default, unless the user chooses otherwise. This allows integrators to create customized PrestaShop builds with (or without) the modules and themes of your choosing.
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p>
                                <strong>Find out exactly what went wrong if the installation fails.</strong> If debug mode is on, a full stack trace will be displayed after something goes wrong during the installation process. This will definitely help developers pinpoint the source of the problem.
                            </p>
                            <p>
                                <strong>Extend the installation process.</strong> Modules now include a callback <code>postInstall()</code>, allowing them to execute code after the shop’s installation is finished. This provides the developers with new possibilities, like add extra steps to the installation, preload assets, or preprocess data.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p>
                                <a href="/releases/images/ps8/dkim.jpeg">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps8/dkim.jpeg">
                                </a>
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p>
                                <a href="/releases/images/ps8/installer_errors.jpeg">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps8/installer_errors.jpeg">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section" id="webservice">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <h2 class="section-title">Webservice</h2>
                            <p>
                                <strong>The status and URL to your shop’s webservice is now displayed</strong> at the top of the page in <em>Advanced parameters > Webservice</em>. This should be useful to new users and help them troubleshoot common problems.
                            </p>
                            <p><strong>It is now possible to perform partial updates on webservice endpoints using the PATCH method.</strong> This allows integrations to update only part of an entity instead of all the fields at once. <a href="https://github.com/PrestaShop/PrestaShop/pull/27952">Learn more about this change here</a>.
                        </div>
                        <div class="col-md-8">
                            <p class="mt-5">
                                <a href="/releases/images/ps8/webservice.jpeg">
                                    <img loading="lazy" class="image-with-shadow" src="/releases/images/ps8/webservice.jpeg">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section" id="media-versioning">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <h2 class="section-title">Media versioning</h2>
                            <p>
                                <strong>Developers can use media versioning to prevent outdated javascript and stylesheet files from being loaded from the browser’s cache.</strong>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <p>A new parameter has been added to <code>registerJavascript</code> and <code>registrerStylesheet</code> methods, allowing module developers to add a version parameter. This parameter will be appended to the asset’s URL, so if the version changes, browsers will download the new asset instead of loading the old version from local cache. <a href="https://github.com/PrestaShop/PrestaShop/pull/24656">Learn more about this change here</a>.
                            </p>
                        </div>
                        <div class="col-md-8">
                            <p>
{{< highlight php "linenos=table" >}}
$this->context->controller->registerJavascript(
    $this->name . '-front-js',
    'modules/' . $this->name . '/views/js/front.js',
    [
        'version' => $this->version,
    ]
);
{{< / highlight >}}
                            </p>
                            <p>
{{< highlight html "linenos=table" >}}
<script
    type="text/javascript"
    src="http://domain.test/modules/modulename/views/js/front.js?1.0.0"
></script>
{{< / highlight >}}
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section" id="cli">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <h2 class="section-title">CLI</h2>
                            <p>
                                <strong>Set up your shop’s configuration values and debug mode from your server’s terminal.</strong>
                            </p>
                            <p>Automate your configuration via scripts, fix a misconfiguration if the web interface is unavailable… many possibilities are now open thanks to this feature! Find more information about it <a href="https://github.com/PrestaShop/PrestaShop/pull/26183">here</a> and <a href="https://github.com/PrestaShop/PrestaShop/pull/26264">here</a>.
                            </p>
                        </div>
                        <div class="col-md-8">
                            <p class="mt-5">
                                <a href="/releases/images/ps8/cli.png">
                                    <img loading="lazy" src="/releases/images/ps8/cli.png">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section bg-light" id="partial-updates">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <h2 class="section-title">Partial updates in ObjectModel</h2>
                            <p>
                                Developers can now perform partial updates on ObjectModel entities. This is technically not a new feature, but it was buggy and unstable before.
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p class="mt-5">
{{< highlight php "linenos=table" >}}
$instance = new SomeEntity($entityId);
$instance->some_field = 'value1';
$instance->some_other_field = 'value2';
$instance->setFieldsToUpdate([
    'some_field' => true,
    'some_other_field' => true
]);
$instance->update();
{{< / highlight >}}
                            </p>
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
                        <div class="col-md-5">
                            <h2 class="section-title">PHP 8 and PHP 8.1 compatibility</h2>
                            <p>
                                PrestaShop 8 now requires at least PHP 7.2 and brings compatibility with the most recent <a href="https://www.php.net/releases/8.1/en.php">PHP 8.1</a>, supported until November 2024. Each new PHP version brings performance and security improvements, so it’s important to run PrestaShop on the most recent PHP version available. Plus, if you target a specific PHP version, you can benefit from all the <a href="https://www.php.net/releases/8.1/en.php">new language features</a>!
                            </p>
                        </div>
                        <div class="col-md-7">
                            <p class="mt-5">
                                <div class="php-logo">
                                    <img loading="lazy" src="/releases/images/ps8/logo_php.svg">
                                </div>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <h2 class="section-title">Symfony and library upgrades</h2>
                            <p>
                                PrestaShop 8 has been upgraded to Symfony 4.4 LTS (Long Term Support) version, which will be supported by the Symfony team until November 2023.
                                This release also brings many updated libraries, like <a href="https://github.com/guzzle/guzzle/">Guzzle 7.4</a>, <a href="https://twig.symfony.com/">Twig 3</a>, <a href="https://phpunit.de/">PHPUnit 8</a>, and <a href="https://github.com/PrestaShop/circuit-breaker">Circuit Breaker 4</a>.
                            </p>
                        </div>
                        <div class="col-md-7">
                            <p class="mt-5">
                                <a href="/releases/images/ps8/logo_symfony.svg">
                                    <img width="100%" loading="lazy" src="/releases/images/ps8/logo_symfony.svg">
                                </a>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <h2 class="section-title">Open source neutrality</h2>
                            <p>
                                PrestaShop 8 is a turning point as the project moves towards <a href="https://build.prestashop.com/news/prestashop-beyond-1-7/">company neutrality</a>: the Addons Marketplace is no longer bundled with the project (but can be <a href="https://github.com/PrestaShopCorp/ps_mbo/releases">installed separately</a>). The project is mostly free of all company products as well as services.
                            </p>
                        </div>
                        <div class="col-md-7">
                            <p class="mt-5 text-center">
                                <a href="/releases/images/ps8/oss.png">
                                    <img loading="lazy" src="/releases/images/ps8/oss.png" class="os-logo">
                                </a>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <h2 class="section-title">Typescript</h2>
                            <p>
                                <strong>All scripts from Symfony-based pages are now built in TypeScript.</strong> TypeScript provides many language features not included in Javascript, the most important one being strong typing. This change should help make the code more robust, reduce the number of bugs, and increase 
                                the project’s long-term maintainability. <a href="https://build.prestashop.com/news/introducing-typescript/">Read more about it here</a>.
                            </p>
                        </div>
                        <div class="col-md-7">
                            <p class="mt-5">
{{< highlight ts "linenos=table" >}}
const {$} = window;

export interface CartAddressIds {
    deliveryAddressId: string;
    invoiceAddressId: string;
}

export interface CartProduct {
    attributeId: number;
    customizationId: number;
    productId: number;
    price?: string;
    newQty?: string;
    prevQty?: number;
}
{{< / highlight >}}
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <h2 class="section-title">Faster assets building</h2>
                            <p>
                                Webpack configurations have been updated to use <strong><em>esbuild-loader</em></strong> instead of <strong><em>babel-loader</em></strong>, which has proven to speed up the build time significantly. In our tests, build time was reduced by a third!
                            </p>
                        </div>
                        <div class="col-md-7">
                            <p class="mt-5">
                                <a href="/releases/images/ps8/terminal.png">
                                    <img loading="lazy" src="/releases/images/ps8/terminal.png">
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
