# Container Image
FROM node:23-bookworm-slim

# Set the WORKDIR so npm install doesn't fail
WORKDIR /usr/app
# Copies your code file from your action repository to the filesystem path `/`
# of the container
COPY entrypoint.sh /usr/app/entrypoint.sh

# Make the script executable
RUN chmod 755 /usr/app/entrypoint.sh

# Install the write-good linter
RUN npm install write-good

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/usr/app/entrypoint.sh"]
