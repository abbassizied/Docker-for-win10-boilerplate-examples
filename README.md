# Docker 
 🍲 A Docker  hello-world examples based on Docker for Windows




 
## Basic Docker concepts
 
### Images
Images contain everything needed to run the container. “Everything” includes not just the code and libraries for the application, but also the operating system too.
### Containers
Simply put, Docker runs the applications in a container. It’s important to note that these containers don’t run in and are not virtual machines. They run on Linux and share the host system’s kernel with each other. Implementations on non-Linux platforms such as macOS and Windows 10 use a Linux virtual machine for the Docker runtime.


Inside containers, applications are isolated from one another and the underlying infrastructure. Each container has a virtual filesystem and appears to have its own kernel. This simplifies application packaging and problems with an application are isolated to a container, protecting the rest of the machine.
### Dockerfiles
Dockerfiles are a list of commands that docker performs to build an image.
Common Dockerfile instructions start with RUN, ENV, FROM, MAINTAINER, ADD, and CMD, among others.
Here, we are listing some commonly used instructions:
- A statement begin with # treated as a comment. 
- <B>FROM</B> - Specifies the base image that the Dockerfile will use to build a new image. For this post, we are using phusion/baseimage as our base image because it is a minimal Ubuntu-based image modified for Docker friendliness.
- <B>MAINTAINER</B> - Specifies the Dockerfile Author Name and his/her email.
- <B>RUN</B> - Runs any UNIX command to build the image.
- <B>ENV</B> - Sets the environment variables. For this post, JAVA_HOME is the variable that is set.
- <B>CMD</B> - Provides the facility to run commands at the start of container. This can be overridden upon executing the docker run command. We should use CMD always in the following form:
   - CMD ["executable", "param1", "param2"?]  // This is preferred way to use CMD. There can be only one CMD in a Dockerfile. If we use more than one CMD, only last one will execute.
- <B>ADD</B> - This instruction copies the new files, directories into the Docker container file system at specified destination.
- <B>EXPOSE</B> - This instruction exposes specified port to the host machine.
- <B>COPY</B> - This instruction is used to copy new files or directories from source to the filesystem of the container at the destination. Ex:
   - COPY abc/ /xyz  
   - Rules:
       - The source path must be inside the context of the build. We cannot COPY ../something /something because the first step of a docker build is to send the context directory (and subdirectories) to the docker daemon.
       - If source is a directory, the entire contents of the directory are copied including filesystem metadata.
- <B>WORKDIR</B> - The WORKDIR is used to set the working directory for any RUN, CMD and COPY instruction that follows it in the Dockerfile. If work directory does not exist, it will be created by default. We can use WORKDIR multiple times in a Dockerfile. Ex:
   - WORKDIR /var/www/html  

 
## Useful commands

```bash
# Delete all containers
$ docker rm $(docker ps -aq)
# Delete all images
$ docker rmi $(docker images -q)
# You can get a list of all active and inactive containers by passing the -a flag to the docker container ls command 
$ docker container ls -a 
# OR
$ docker container ls --all</B>
# List dangling volumes in Docker 
$ docker volume ls -q -f "dangling=true" 
# Remove unused (dangling) volumes in Docker 
$ docker volume rm $(docker volume ls -q -f "dangling=true") 
# One liner to stop / remove all of Docker containers  
$ docker stop $(docker ps -a -q) 
$ docker rm $(docker ps -a -q) 
# How to remove <none> images after building 
$ docker rmi $(docker images -f “dangling=true” -q) 
#lists all images that are dangling and has no pointer to it
$ docker images --filter dangling=true 
#Removes all those images.
$ docker rmi `docker images --filter dangling=true -q`  
```
 
 
## Issues
If you come across any issues please [report them here](https://github.com/abbassizied/Docker-for-win10-boilerplate-examples/issues)

 
## Where to go next
Try to complete this To Do List:
- [x] Alpine
- [] Cplusplus-hello-world
- [] Node.js-hello-world
- [] MEAN
- [] MERN
- [] PHP-hello-world
- [] PHP7&Mysql-based-application
- [x] Java-hello-world 
- [] Jenkins 
- [x] Python-hello-world
- [] Scala-hello-world
- [x] Static-website-with-IIS

PS: This is a non exhaustive list. Meanwhile, i am going to add what i think are useful examples.

 

## Useful links
- [Get started with Docker for Windows](https://docs.docker.com/docker-for-windows/)
- [Dockerfile Project- Trusted Automated Docker Builds](https://dockerfile.github.io/)
- [Awesome-docker](https://awesome-docker.netlify.com/#web)
- [DockStation](https://dockstation.io/)
- [Rancher](https://rancher.com/)
- [How upgrade a docker image without creating new image?](https://stackoverflow.com/questions/40791386/how-upgrade-a-docker-image-without-creating-new-image)
- [Play with Docker classroom](https://training.play-with-docker.com/alacart/)





## Disclaimer
By using Dockerfiles contained in this repo and/or container images derived from them, you are agreeing to any and all applicable software licences, license agreements & export rules related to unlimited strength crypto, etc..
