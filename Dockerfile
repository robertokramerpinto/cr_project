# Build:
# Start loading initial Image with FROM command. Images are downloaded from Docker HUB
FROM python:3.6-slim

# Start Running commands and defining env variables
RUN apt-get update && apt-get install -y --no-install-recommends \
        git \
        curl \
        ca-certificates \
        sudo \
        openssh-client \
   && rm -rf /var/lib/apt/lists/*

# Defining project directory
ARG HOME_FOLDER=/home
ENV PROJECT_HOME=${HOME_FOLDER}/cr_project
RUN mkdir ${PROJECT_HOME}

# Copy the entire repo with the exception of the items
# listed in the .dockerignore
COPY . ${PROJECT_HOME}/

# Change directory to persofactory home
WORKDIR ${PROJECT_HOME}

# Installing required packages
RUN pip install -r requirements.txt
# Installing project package
RUN python setup.py install
