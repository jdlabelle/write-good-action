# Container Image
FROM node:23-bookworm-slim

# Copies your code file from your action repository to the filesystem path `/`
# of the container
COPY entrypoint.sh /entrypoint.sh

# Make the script executable
RUN chmod 755 /entrypoint.sh

# Install the write-good linter
RUN npm install write-good

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
