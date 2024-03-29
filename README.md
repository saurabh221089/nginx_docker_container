# nginx_docker_container

<img src="logo.png" width=25% height=25%>

A **Dockerfile** is a script that contains collections of commands and instructions that will be automatically executed in sequence in the docker environment for building a new docker image.

This dockerfile is use to create a Docker container hosting a HTML5 website template on an Nginx server (lightest web server).
We are using Alpine Linux distro as base image because it is so lightweight and small in size (just 4 MB) which makes our docker container least resource consuming.

## Prerequisites

Docker should be installed.
Root Privileges.


## Commands for DOCKERFILE

**ADD**: Copy files from a source on the host to the container’s own filesystem at the set destination.

**CMD**: Execute a specific command within the container.

**ENTRYPOINT**: Set a default application to be used every time a container is created with the image.

**ENV**: Set environment variables.

**EXPOSE**: Expose a specific port to enable networking between the container and the outside world.

**FROM**: Define the base image used to start the build process.

**MAINTAINER**: Define the full name and email address of the image creator.

**RUN**: Central executing directive for Dockerfiles.

**USER**: Set the UID (the username) that will run the container.

**VOLUME**: Enable access from the container to a directory on the host machine.

**WORKDIR**: Set the path where the command, defined with CMD, is to be executed.


## Creating the container

1. Run the below command in the same directory where the dockerfile resides.

```docker build -t nginx_alpine . ```

2. Check for the created image with name *nginx_alpine*

```docker images```

3. Create a container from this image.

```docker run -d -p 80:80 --name nginx_container nginx_alpine```

4. Check for the running container. Also check on browser http://localhost

```docker ps``` 

5. Remove the container.

```docker rm -f nginx_container```

6. Tag the image with your repo.

```docker image tag nginx_alpine saurabh221089/nginx_alpine ```

7. Push the image on Docker Hub

```docker push saurabh221089/nginx_alpine:latest```

8. Delete the local image and pull it from Docker Hub again.

```docker rmi saurabh221089/nginx_alpine```

```docker run -d -p 80:80 --name website saurabh221089/nginx_alpine```