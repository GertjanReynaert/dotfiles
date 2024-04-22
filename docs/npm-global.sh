#!/usr/bin/env bash

# Install npm
npm install -g npm

# Install Yarn
# https://yarnpkg.com/getting-started/install
corepack enable

npm install -g \
  commitizen \
  gitmoji-cli

