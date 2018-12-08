# Description

GitLab Community Edition docker image based on the Omnibus package

# Install GitLab using docker-compose

With Docker compose you can easily configure, install, and upgrade your Docker-based GitLab installation.

1. [Install](https://docs.docker.com/compose/install) Docker Compose
2. Create a [docker-compose.yml](https://github.com/zetraison/gitlab-cis/blob/master/docker-compose.yml) file
3. Make sure you are in the same directory as docker-compose.yml and run 
```bash
docker-compose up -d 
``` 
to start GitLab

# Update GitLab using Docker compose

Provided you installed GitLab using docker-compose, all you have to do is run 
```bash
docker-compose pull
``` 
and 
```bash
docker-compose up -d
```
to download a new release and upgrade your GitLab instance.
