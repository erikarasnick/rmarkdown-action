#Container image that runs your code
FROM rocker/r-rmd

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh .
COPY render.R .

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
