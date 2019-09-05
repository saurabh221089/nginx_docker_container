# nginx_docker_container

<img src="logo.png" width=25% height=25%>


This dockerfile is use to create a Docker container hosting a website on an Nginx server created on Alpine Linux distro.
We have used Alpine distro because it is so lightweight and small in size that its image is just of 4 MB.

## Format of DOCKERFILE

<b>ADD</b>: Copy files from a source on the host to the container’s own filesystem at the set destination.
<b>CMD</b>: Execute a specific command within the container.
<b>ENTRYPOINT</b>: Set a default application to be used every time a container is created with the image.
<b>ENV</b>: Set environment variables.
<b>EXPOSE</b>: Expose a specific port to enable networking between the container and the outside world.
<b>FROM</b>: Define the base image used to start the build process.
<b>MAINTAINER</b>: Define the full name and email address of the image creator.
<b>RUN</b>: Central executing directive for Dockerfiles.
<b>USER</b>: Set the UID (the username) that will run the container.
<b>VOLUME</b>: Enable access from the container to a directory on the host machine.
<b>WORKDIR</b>: Set the path where the command, defined with CMD, is to be executed.


## Creating the container

Run the below command in the same directory where the dockerfile resides.

<p style="color:blue">docker build -t nginx_alpine .</p>
