FROM node:18-alpine

WORKDIR /app

COPY strapi/package.json strapi/package-lock.json ./
RUN npm install

COPY strapi .

RUN npm build

EXPOSE 1337
CMD ["npm", "run", "develop"]
