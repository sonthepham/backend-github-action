FROM node:14-alpine AS builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci

FROM node:14-alpine
WORKDIR /usr/src/app
RUN chown node:node .
USER node
COPY package*.json ./
RUN npm ci
EXPOSE 8080 8888
ENTRYPOINT ["npm", "run"]
CMD ["start"]
