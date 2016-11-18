# Centos Redis Supervisord Image 

This service contains an instance of the Redis in-memory cache and is managed by [supervisord](http://supervisord.org/).

# Installation

Docker and Docker-Compose are required to run this application, which are packaged together for Mac and Windows users into [Docker Toolbox](https://www.docker.com/products/docker-toolbox), for Linux users, follow the instructions for installing  the [Docker Engine](https://docs.docker.com/engine/installation/) and [Docker Compose](https://docs.docker.com/compose/install/).

# Building the Redis cache service

After installing the Docker dependencies, run the following from the command line at the root of this directory :

```
make docker
```

That command will build an image (using the `Dockerfile` "recipe" in this project folder) from which containers can be created.

# Running the Container

This container can be run from the `docker-compose.yml` in the parent directory OR manually from the command line like this:

```bash
docker run --name=centosredissupervisor -d -p 6379:6379 -p 6380:6380
centosredissupervisor
```

That command build the redis caching service. The standard ports of 6379 and 6380 are exposed inside the container and mapped to the same port on the host (you can map to a different host port if you wish). 

