# Nexus

[![](https://img.shields.io/docker/pulls/cnservices/nexus.svg)](https://hub.docker.com/r/cnservices/nexus/)
[![](hhttps://img.shields.io/docker/build/cnservices/nexus)](https://hub.docker.com/r/cnservices/nexus/)
[![](https://img.shields.io/docker/automated/cnservices/nexus)](https://hub.docker.com/r/cnservices/nexus/)
[![](https://img.shields.io/docker/stars/cnservices/nexus)](https://hub.docker.com/r/cnservices/nexus/)
[![](https://img.shields.io/github/license/cn-docker/nexus)](https://github.com/cn-docker/nexus)
[![](https://img.shields.io/github/issues/cn-docker/nexus)](https://github.com/cn-docker/nexus)
[![](https://img.shields.io/github/issues-closed/cn-docker/nexus)](https://github.com/cn-docker/nexus)
[![](https://img.shields.io/github/languages/code-size/cn-docker/nexus)](https://github.com/cn-docker/nexus)
[![](https://img.shields.io/github/repo-size/cn-docker/nexus)](https://github.com/cn-docker/nexus)

Docker image based on Sonatype Nexus official image.

## Start Nexus ##

Create a folder to store Nexus data files, so the container can be reseted without losing information.

    mkdir ~/nexus_data

Run the container

    docker run -d --name nexus --restart=always -p 8081:8081 -v ~/nexus_data:/nexus-data cnservices/nexus
