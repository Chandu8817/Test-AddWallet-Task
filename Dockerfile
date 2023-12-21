# Use an official Node.js image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the Node.js script into the container at /app
COPY package.json .
COPY package-lock.json .
COPY Abi.json .
COPY EventListener.js .

# Install npm packages
RUN npm install

# Specify the command to run on container start
CMD ["node", "EventListener.js"]
