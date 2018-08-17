FROM node:8

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY index.js ./
RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .


CMD [ "node", "index.js" ]
EXPOSE 3000
