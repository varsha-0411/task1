FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy source and views
COPY src ./src
COPY views ./views

# Expose port
EXPOSE 80

# Start app
CMD ["npm", "start"]
