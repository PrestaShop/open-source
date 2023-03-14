Hello,

[![Build](https://github.com/PrestaShop/open-source/actions/workflows/build.yml/badge.svg)](https://github.com/PrestaShop/open-source/actions/workflows/build.yml)

This repository aims to improve the overall maturity of the PrestaShop open source project.

It contains:
- source code and content for www.prestashop-project.org
- materials about the open source project evolution

# Rendering the site locally

1. Clone the repository somewhere on your system:
    ```
    git clone --recurse-submodules https://github.com/PrestaShop/open-source.git
    ```

**Note** normal cloning will not work. You _must_ recurse the submodules or hugo will not understand shortcodes and you will see errors such as: 
  `failed to extract shortcode: template for shortcode "children" not found`

2. Switch to the `open-source` directory:
    ```
    cd open-source
    ```

3. Install Hugo (optional if already installed):
    ```
    ./bin/installHugo.sh
    ```

4. Launch Hugo:
    ```
    hugo server
    ```
