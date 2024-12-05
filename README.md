<!-- DO NOT EDIT THIS FILE MANUALLY -->
<!-- Please read https://github.com/linuxserver/docker-emulatorjs/blob/master/.github/CONTRIBUTING.md -->
[![linuxserver.io](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/linuxserver_medium.png)](https://linuxserver.io)

[![Blog](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Blog)](https://blog.linuxserver.io "all the things you can do with our containers including How-To guides, opinions and much more!")
[![Discord](https://img.shields.io/discord/354974912613449730.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Discord&logo=discord)](https://discord.gg/YWrKVTn "realtime support / chat with the community and the team.")
[![Discourse](https://img.shields.io/discourse/https/discourse.linuxserver.io/topics.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=discourse)](https://discourse.linuxserver.io "post on our community forum.")
[![Fleet](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Fleet)](https://fleet.linuxserver.io "an online web interface which displays all of our maintained images.")
[![GitHub](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitHub&logo=github)](https://github.com/linuxserver "view the source for all of our repositories.")
[![Open Collective](https://img.shields.io/opencollective/all/linuxserver.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Supporters&logo=open%20collective)](https://opencollective.com/linuxserver "please consider helping us by either donating or contributing to our budget")

The [LinuxServer.io](https://linuxserver.io) team brings you another container release featuring:

* regular and timely application updates
* easy user mappings (PGID, PUID)
* custom base image with s6 overlay
* weekly base OS updates with common layers across the entire LinuxServer.io ecosystem to minimise space usage, down time and bandwidth
* regular security updates

Find us at:

* [Blog](https://blog.linuxserver.io) - all the things you can do with our containers including How-To guides, opinions and much more!
* [Discord](https://discord.gg/YWrKVTn) - realtime support / chat with the community and the team.
* [Discourse](https://discourse.linuxserver.io) - post on our community forum.
* [Fleet](https://fleet.linuxserver.io) - an online web interface which displays all of our maintained images.
* [GitHub](https://github.com/linuxserver) - view the source for all of our repositories.
* [Open Collective](https://opencollective.com/linuxserver) - please consider helping us by either donating or contributing to our budget

# [linuxserver/emulatorjs](https://github.com/linuxserver/docker-emulatorjs)

[![Scarf.io pulls](https://scarf.sh/installs-badge/linuxserver-ci/linuxserver%2Femulatorjs?color=94398d&label-color=555555&logo-color=ffffff&style=for-the-badge&package-type=docker)](https://scarf.sh)
[![GitHub Stars](https://img.shields.io/github/stars/linuxserver/docker-emulatorjs.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/linuxserver/docker-emulatorjs)
[![GitHub Release](https://img.shields.io/github/release/linuxserver/docker-emulatorjs.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/linuxserver/docker-emulatorjs/releases)
[![GitHub Package Repository](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitHub%20Package&logo=github)](https://github.com/linuxserver/docker-emulatorjs/packages)
[![GitLab Container Registry](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitLab%20Registry&logo=gitlab)](https://gitlab.com/linuxserver.io/docker-emulatorjs/container_registry)
[![Quay.io](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Quay.io)](https://quay.io/repository/linuxserver.io/emulatorjs)
[![Docker Pulls](https://img.shields.io/docker/pulls/linuxserver/emulatorjs.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=pulls&logo=docker)](https://hub.docker.com/r/linuxserver/emulatorjs)
[![Docker Stars](https://img.shields.io/docker/stars/linuxserver/emulatorjs.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=stars&logo=docker)](https://hub.docker.com/r/linuxserver/emulatorjs)
[![Jenkins Build](https://img.shields.io/jenkins/build?labelColor=555555&logoColor=ffffff&style=for-the-badge&jobUrl=https%3A%2F%2Fci.linuxserver.io%2Fjob%2FDocker-Pipeline-Builders%2Fjob%2Fdocker-emulatorjs%2Fjob%2Fmaster%2F&logo=jenkins)](https://ci.linuxserver.io/job/Docker-Pipeline-Builders/job/docker-emulatorjs/job/master/)
[![LSIO CI](https://img.shields.io/badge/dynamic/yaml?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=CI&query=CI&url=https%3A%2F%2Fci-tests.linuxserver.io%2Flinuxserver%2Femulatorjs%2Flatest%2Fci-status.yml)](https://ci-tests.linuxserver.io/linuxserver/emulatorjs/latest/index.html)

[Emulatorjs](https://github.com/linuxserver/emulatorjs) - In browser web based emulation portable to nearly any device for many retro consoles. A mix of emulators is used between Libretro and EmulatorJS.

[![emulatorjs](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/emulatorjs-logo.png)](https://github.com/linuxserver/emulatorjs)

## Supported Architectures

We utilise the docker manifest for multi-platform awareness. More information is available from docker [here](https://distribution.github.io/distribution/spec/manifest-v2-2/#manifest-list) and our announcement [here](https://blog.linuxserver.io/2019/02/21/the-lsio-pipeline-project/).

Simply pulling `lscr.io/linuxserver/emulatorjs:latest` should retrieve the correct image for your arch, but you can also pull specific arch images via tags.

The architectures supported by this image are:

| Architecture | Available | Tag |
| :----: | :----: | ---- |
| x86-64 | ✅ | amd64-\<version tag\> |
| arm64 | ✅ | arm64v8-\<version tag\> |
| armhf | ❌ | |

## Application Setup

The Backend can be accessed at:

* http://yourhost:3000/

The first thing you will need to do is click to download the default art/configs from this interface, this will setup a skeleton directory in your `/data` mount. From there add roms to the respective `roms` directories and follow the on screen instructions to add them to your web frontend running on port 80.

**I understand there may be some confusion as to project naming, but when this project (linuxserver/emulatorjs) started it was meant to be a simple frontend for self hosting folks to use the at the time deobfuscated code of [https://www.emulatorjs.com/](https://www.emulatorjs.com/) that [ethanaobrien](https://github.com/ethanaobrien) was working on. Since then [EmulatorJS](https://github.com/EmulatorJS/EmulatorJS) has evolved into it's own amazing project based on [Libretro](https://github.com/libretro) cores that have been highly optimized to function for web. This project mostly contains custom built libretro cores found [here](https://github.com/linuxserver/libretro-cores). So in general despite the naming of this project and the logo this is just a docker container with a web based backend for generating a useable self hosted emulation website and is in no way affiliated with [EmulatorJS](https://github.com/EmulatorJS/EmulatorJS).**

**This container (outside of the profile functionality) only generates a static set of files that can be hosted on any web provider even object storage. Everything runs in the client's browser and there are no dependencies on this container. To extract/copy this website it is at the path `/emulatorjs/frontend` inside the container. If you are happy with the catalouge you have created and no longer want to run stuff like the IPFS backend or want to upload these files to some other hosting provider you can simply copy the contents of that directory and kill off this container. This container can also be started without IPFS once you collection is set using the environment variable `-e DISABLE_IPFS=true`.**

### Read Only Rom Mounts

**Mounting in existing rom directories Read Only can be achieved by using a special root path `/roms`, For example for NES:**

`-v /path/to/nes/roms:/roms/nes:ro`

The folder names for systems are:
* 3do
* arcade
* atari2600
* atari5200
* atari7800
* colecovision
* doom
* gb
* gba
* gbc
* jaguar
* lynx
* msx
* n64
* nds
* nes
* ngp
* odyssey2
* pce
* psx
* sega32x
* segaCD
* segaGG
* segaMD
* segaMS
* segaSaturn
* segaSG
* snes
* vb
* vectrex
* ws

### Compatible and Tested Browsers 

**Chromium Based Browsers**- This is the golden standard whether desktop or on mobile (Android) Chrome/Chromium/Brave/Edge should always be used. They have the best performance when it comes to WebAssembly.

**Firefox**- This will work (at reduced performance though) without tested controller support.

**Safari iOS**- Safari performs well and has controller support though in recent updates the amount of ram available to a single tab (~265MB) makes it impossible to run n64 emulation or anything CD based. Do not use [WKWebView](https://developer.apple.com/documentation/webkit/wkwebview) applications like Chrome or Firefox on iOS they will not be detected properly in the client software. Your best bet in iOS is to add the web page to your home screen from Safari and launch from there to get a full screen interface.

**Edge Xbox Series X/S**- This also performs well and was the basis of this project though recent console updates have knocked the ram available to a single tab from 1GB to 128MB making it impossible to run CD based games or n64.

### Navigation Basics

**Retroarch Menu**- The Retroarch menu can be accessed using F1 on keyboard, start/select/R1/L1 at the same time on controller, or pressing the button in the top left in touch mode.

**Fast Scrolling**- Items in the menu can be scrolled by letter by using PgUp/PgDn on the keyboard or the R1/L1 buttons on controller. In touch mode scrolling can be sped up by touching and dragging (while holding) either up or down.

**For Xbox users please click the select button a couple times after launching a game to ensure the B button does not trigger a "back" action in the browser. (official name "view button" it is the two small squares) Exiting the controller mode and back to browser controls can be triggered by holding the start button for 3 seconds. (official name "menu button" the three lines)**

## Usage

To help you get started creating a container from this image you can either use docker-compose or the docker cli.

>[!NOTE]
>Unless a parameter is flaged as 'optional', it is *mandatory* and a value must be provided.

### docker-compose (recommended, [click here for more info](https://docs.linuxserver.io/general/docker-compose))

```yaml
---
services:
  emulatorjs:
    image: lscr.io/linuxserver/emulatorjs:latest
    container_name: emulatorjs
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
      - SUBFOLDER=/ #optional
    volumes:
      - /path/to/config:/config
      - /path/to/data:/data
    ports:
      - 3000:3000
      - 80:80
      - 4001:4001 #optional
    restart: unless-stopped
```

### docker cli ([click here for more info](https://docs.docker.com/engine/reference/commandline/cli/))

```bash
docker run -d \
  --name=emulatorjs \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e SUBFOLDER=/ `#optional` \
  -p 3000:3000 \
  -p 80:80 \
  -p 4001:4001 `#optional` \
  -v /path/to/config:/config \
  -v /path/to/data:/data \
  --restart unless-stopped \
  lscr.io/linuxserver/emulatorjs:latest
```

## Parameters

Containers are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| :----: | --- |
| `-p 3000:3000` | Rom/artwork management interface, used to generate/manage config files and download artwork |
| `-p 80:80` | Emulation frontend containing static web files used to browse and launch games |
| `-p 4001` | IPFS peering port, if you want to participate in the P2P network to distribute frontend artwork please forward this to the Internet |
| `-e PUID=1000` | for UserID - see below for explanation |
| `-e PGID=1000` | for GroupID - see below for explanation |
| `-e TZ=Etc/UTC` | specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List). |
| `-e SUBFOLDER=/` | Specify a subfolder for reverse proxies IE '/FOLDER/' |
| `-v /config` | Path to store user profiles |
| `-v /data` | Path to store roms/artwork |

## Environment variables from files (Docker secrets)

You can set any environment variable from a file by using a special prepend `FILE__`.

As an example:

```bash
-e FILE__MYVAR=/run/secrets/mysecretvariable
```

Will set the environment variable `MYVAR` based on the contents of the `/run/secrets/mysecretvariable` file.

## Umask for running applications

For all of our images we provide the ability to override the default umask settings for services started within the containers using the optional `-e UMASK=022` setting.
Keep in mind umask is not chmod it subtracts from permissions based on it's value it does not add. Please read up [here](https://en.wikipedia.org/wiki/Umask) before asking for support.

## User / Group Identifiers

When using volumes (`-v` flags), permissions issues can arise between the host OS and the container, we avoid this issue by allowing you to specify the user `PUID` and group `PGID`.

Ensure any volume directories on the host are owned by the same user you specify and any permissions issues will vanish like magic.

In this instance `PUID=1000` and `PGID=1000`, to find yours use `id your_user` as below:

```bash
id your_user
```

Example output:

```text
uid=1000(your_user) gid=1000(your_user) groups=1000(your_user)
```

## Docker Mods

[![Docker Mods](https://img.shields.io/badge/dynamic/yaml?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=emulatorjs&query=%24.mods%5B%27emulatorjs%27%5D.mod_count&url=https%3A%2F%2Fraw.githubusercontent.com%2Flinuxserver%2Fdocker-mods%2Fmaster%2Fmod-list.yml)](https://mods.linuxserver.io/?mod=emulatorjs "view available mods for this container.") [![Docker Universal Mods](https://img.shields.io/badge/dynamic/yaml?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=universal&query=%24.mods%5B%27universal%27%5D.mod_count&url=https%3A%2F%2Fraw.githubusercontent.com%2Flinuxserver%2Fdocker-mods%2Fmaster%2Fmod-list.yml)](https://mods.linuxserver.io/?mod=universal "view available universal mods.")

We publish various [Docker Mods](https://github.com/linuxserver/docker-mods) to enable additional functionality within the containers. The list of Mods available for this image (if any) as well as universal mods that can be applied to any one of our images can be accessed via the dynamic badges above.

## Support Info

* Shell access whilst the container is running:

    ```bash
    docker exec -it emulatorjs /bin/bash
    ```

* To monitor the logs of the container in realtime:

    ```bash
    docker logs -f emulatorjs
    ```

* Container version number:

    ```bash
    docker inspect -f '{{ index .Config.Labels "build_version" }}' emulatorjs
    ```

* Image version number:

    ```bash
    docker inspect -f '{{ index .Config.Labels "build_version" }}' lscr.io/linuxserver/emulatorjs:latest
    ```

## Updating Info

Most of our images are static, versioned, and require an image update and container recreation to update the app inside. With some exceptions (noted in the relevant readme.md), we do not recommend or support updating apps inside the container. Please consult the [Application Setup](#application-setup) section above to see if it is recommended for the image.

Below are the instructions for updating containers:

### Via Docker Compose

* Update images:
    * All images:

        ```bash
        docker-compose pull
        ```

    * Single image:

        ```bash
        docker-compose pull emulatorjs
        ```

* Update containers:
    * All containers:

        ```bash
        docker-compose up -d
        ```

    * Single container:

        ```bash
        docker-compose up -d emulatorjs
        ```

* You can also remove the old dangling images:

    ```bash
    docker image prune
    ```

### Via Docker Run

* Update the image:

    ```bash
    docker pull lscr.io/linuxserver/emulatorjs:latest
    ```

* Stop the running container:

    ```bash
    docker stop emulatorjs
    ```

* Delete the container:

    ```bash
    docker rm emulatorjs
    ```

* Recreate a new container with the same docker run parameters as instructed above (if mapped correctly to a host folder, your `/config` folder and settings will be preserved)
* You can also remove the old dangling images:

    ```bash
    docker image prune
    ```

### Image Update Notifications - Diun (Docker Image Update Notifier)

>[!TIP]
>We recommend [Diun](https://crazymax.dev/diun/) for update notifications. Other tools that automatically update containers unattended are not recommended or supported.

## Building locally

If you want to make local modifications to these images for development purposes or just to customize the logic:

```bash
git clone https://github.com/linuxserver/docker-emulatorjs.git
cd docker-emulatorjs
docker build \
  --no-cache \
  --pull \
  -t lscr.io/linuxserver/emulatorjs:latest .
```

The ARM variants can be built on x86_64 hardware and vice versa using `lscr.io/linuxserver/qemu-static`

```bash
docker run --rm --privileged lscr.io/linuxserver/qemu-static --reset
```

Once registered you can define the dockerfile to use with `-f Dockerfile.aarch64`.

## Versions

* **28.01.24:** - Skip IPFS config if DISABLE_IPFS is set as env variable.
* **27.01.24:** - Add atari5200 support.
* **24.01.24:** - Pin node back on aarch64 as well for compatibility.
* **23.01.24:** - Add logic to symlink out RO rom directories to support upgrades.
* **14.01.24:** - Update remaining cores for melonds and yabause threaded to fix audio issues.
* **11.01.24:** - Use Node 16 on x86 image to restore metadata uploads in backend, update psx core to current.
* **07.01.24:** - Update to use new Mupen64 plus core by default.
* **06.01.24:** - Update many emulators to fix audio issues and use latest codebases.
* **29.12.23:** - Rebase to Alpine 3.19, add option to launch without IPFS.
* **09.08.23:** - Rebase to Alpine 3.18, migrate to s6v3.
* **06.07.23:** - Deprecate armhf. As announced [here](https://www.linuxserver.io/blog/a-farewell-to-arm-hf)
* **24.11.22:** - Update IPFS links for chdman.
* **04.04.22:** - Ingest pre-built chdman bins during build time.
* **23.02.22:** - Update ingestion point for emulatorjs bins.
* **25.01.22:** - Allow users to mount in existing rom directories.
* **14.01.22:** - Add profile paths and rebase to Alpine 3.15.
* **04.01.22:** - Add headers needed for Threaded emulators.
* **29.11.21:** - Add wasm mime type to NGINX.
* **26.11.21:** - Configure IPFS in a lower power mode, use homebuilt blobs for emu cores.
* **19.11.21:** - Pin retroarch version.
* **14.11.21:** - Update default cores to ingest.
* **23.10.21:** - Initial release.
