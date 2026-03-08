FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY src ./src
COPY views ./views

EXPOSE 80

CMD ["node", "src/index.js"]
