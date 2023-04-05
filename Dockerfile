FROM node:16

#create app directory
WORKDIR /usr/src/app

#install aoo dependencies
#a wildcard is used to ensure both package.json ANS package-lock.json are copied
#where available (npm@5+)
COPY package*.json ./

RUN npm install

#bundle app source
COPY app.js .

EXPOSE 3040
CMD [ "node", "app.js" ]

