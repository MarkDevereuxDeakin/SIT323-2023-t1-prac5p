#Currently running node.js 18.
FROM node:18

#Create app directory
WORKDIR /usr/src/app

#Install app dependencies
#A wildcard is used to ensure both package.json AND package-lock.json are copied
#where available (npm@5+)
COPY package*.json ./

RUN npm install

#Bundle app source
COPY server.js .

EXPOSE 8080

#Using Nodemon, hence CMD ["nodemon, "start]
CMD ["node", "server.js"]