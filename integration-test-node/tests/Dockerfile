FROM node:alpine
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
RUN npm install request --save-dev
RUN npm install --save-dev jasmine
COPY . .
CMD npm test
