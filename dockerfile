# Stage 1: Build the application
FROM node:16.13.1-alpine3.12 AS builder

COPY . /app
WORKDIR /app

COPY package*.json ./
RUN npm install

# Stage 2: Run the application
FROM node:16.13.1-alpine3.12

COPY --from=builder /app /app
WORKDIR /app

CMD ["npm", "run", "start"]
