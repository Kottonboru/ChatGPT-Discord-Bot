FROM node:alpine

# Create APP Directory
WORKDIR /usr/src/app

# Install Dependencies
COPY package*.json ./

RUN npm install

# Bundle Source
COPY . .

CMD ["npm", "run", "start"]
