FROM node:10-alpine
MAINTAINER "sudheer reddy duba <sudheer.reddy.duba@gmail.com>"
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY package*.json ./
USER node
RUN npm install --no-fund
COPY --chown=node:node . .
EXPOSE 8080
CMD [ "node", "app.js" ]
