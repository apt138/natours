# Pull base image
FROM node:22-alpine

# Setting work directory
WORKDIR /code

# # install dependencies
RUN npm install -g sass
RUN npm install -g live-server
RUN npm install -g concat
RUN npm i -g autoprefixer
RUN npm i -g postcss-cli
RUN npm i -g npm i npm-run-all

# copy project
COPY . .