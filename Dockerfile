FROM node:13.1.0-alpine

# create destination directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm install

RUN npm run build

# expose 8080 on container
EXPOSE 8080

# start the app
CMD npm start