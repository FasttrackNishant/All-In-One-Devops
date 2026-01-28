FROM node:20-alpine

WORKDIR /myapp

COPY package*.json ./

RUN npm install --omit=dev

COPY . .

RUN npm install

EXPOSE 3000

CMD [ "npm","run dev" ]

