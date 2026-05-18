FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN apt-get update && apt-get install -y libatomic1 && rm -rf /var/lib/apt/lists/*
RUN npm install
RUN npm install express
COPY . .
EXPOSE 3000
CMD [ "node", "server.js" ]
