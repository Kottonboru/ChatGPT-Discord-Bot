FROM node:alpine

# Create APP Directory
WORKDIR /usr/src/app

# Install Dependencies
COPY package*.json ./

RUN npm ci

# Bundle Source
COPY . .

CMD ["node", "./src/index.js"]