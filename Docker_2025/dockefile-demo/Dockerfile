FROM node:22-alpine

WORKDIR /app

COPY package.json ./

COPY package-lock.json ./

# COPY package*.json ./

RUN npm install

# copy all remaining folders , <
COPY . .

# expose the port
EXPOSE 5173

CMD ["npm","run","dev"]


