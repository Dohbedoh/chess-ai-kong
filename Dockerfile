FROM node:latest

# Create my application directory
RUN mkdir -p /app
WORKDIR /app

# Install app dependencies
COPY package.json /app/
RUN npm install

# Bundle app source
COPY . /app

EXPOSE 8080
CMD [ "npm", "test" ]
#ENTRYPOINT [ "npm", "start"]
