
FROM node:10
WORKDIR /usr/app

COPY package*.json ./
RUN npm install
RUN npm install typescript -g

COPY . .
RUN tsc

EXPOSE 3000
CMD [ "npm", "start" ]
