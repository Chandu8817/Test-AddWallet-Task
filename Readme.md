# Your Node.js Application

Brief description of your Node.js application.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Installation](#installation)
  - [Docker Setup](#Docker-setup)
- [Usage](#usage)
- [Docker](#docker)
  - [Building the Docker Image](#building-the-docker-image)
  - [Running the Docker Container](#running-the-docker-container)
- [Environment Variables](#environment-variables)
- [External Data](#external-data)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

Node above 16 version 

Docker "For Runnuing the docker image"

## Getting Started

# Deploy the contract file  using remix IDE
# Copy the contract address and add in .env

```bash
# Clone the repository
git clone https://github.com/Chandu8817/Test-AddWallet-Task.git

# Navigate to the project directory
cd AddWalletTask

# Configuration 
Create a .env file in root folder and add all the environment variables from example.env

# Install dependencies 
npm install
```
## Docker setup 

```bash 
# Build the Docker image(make sure the name in lowercase)
docker build -t your-node-app .

# Run the Docker container
docker run --env-file .env your-node-app

```

## Test the Contract

```bash 
# Call the function Add Wallet (use remix or any blockchain explorer)
```