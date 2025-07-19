
#stage 1
FROM node:22-alpine AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

#Stage 2 Proucion

FROM node:22-alpine

# now copying from build stage are faster rather then outside of container

WORKDIR /app

COPY --from=builder /app /app

EXPOSE 3000

ENV PORT=3000

CMD ["node","index.js"]