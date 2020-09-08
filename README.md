# cr_project
Credit Risk Project

# Initial Configuration

**Project Kick-off**

> at main project level

* setup.py
* Dockerfile
* README.md
* .gitignore

> Define folder structure


**Initial Docker test**

Build docker container based on current DockerFile:

`docker build -f Dockerfile -t cr_project:train .`

Start running docker container:`

`docker run -ti cr_project:train /bin/bash`

