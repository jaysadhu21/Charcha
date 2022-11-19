# Base Image
FROM node:14-alpine
# Create app directory
WORKDIR /usr/src/Charcha
# Install app dependencies
COPY package*.json ./
RUN npm install
# Bundle app source
COPY . .
EXPOSE 8080
CMD [ "node", "server.js"]