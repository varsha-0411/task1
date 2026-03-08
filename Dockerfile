FROM node:20-alpine

WORKDIR /app

# Copy package.json & install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy source code
COPY src/ ./src

# Copy views folder
COPY views/ ./views

EXPOSE 80

CMD ["node", "src/index.js"]
