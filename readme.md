# PrestaShop Open Source

[![Build](https://github.com/PrestaShop/open-source/actions/workflows/build.yml/badge.svg)](https://github.com/PrestaShop/open-source/actions/workflows/build.yml)

This repository aims to improve the overall maturity of the PrestaShop open source project.

It contains:

- source code and content for <www.prestashop-project.org>
- materials about the open source project evolution

## Rendering the site locally

### Option 1: Using Hugo installed on your system

1. Clone the repository somewhere on your system:

    ```bash
    git clone --recurse-submodules https://github.com/PrestaShop/open-source.git
    ```

    **Note** normal cloning will not work. You _must_ recurse the submodules or hugo will not understand shortcodes and you will see errors such as:
    `failed to extract shortcode: template for shortcode "children" not found`

2. Switch to the `open-source` directory:

    ```bash
    cd open-source
    ```

3. Install Hugo (optional if already installed):

    ```bash
    ./bin/installHugo.sh
    ```

4. Launch Hugo:

    ```bash
    hugo server
    ```

### Option 2: Using Docker (no need to install Hugo locally)

If you do not want to install Hugo on your system, you can use the provided `docker-compose.yml` file to run the site in a container.

1. Clone the repository (with submodules):

    ```bash
    git clone --recurse-submodules https://github.com/PrestaShop/open-source.git
    ```

2. Switch to the `open-source` directory:

    ```bash
    cd open-source
    ```

3. Use the following command to start the Hugo server:

    ```bash
    docker-compose up
    ```

   By default, the server will run on port `1313`. You can specify a different port by setting the `HUGO_SERVER_PORT` environment variable before running the command. For example:

    ```bash
    HUGO_SERVER_PORT=3000 docker-compose up
    ```

4. Access the site in your browser at `http://localhost:<PORT>`, replacing `<PORT>` with the port you defined (default is `1313`).
