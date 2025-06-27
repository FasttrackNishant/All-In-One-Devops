FROM ubuntu

RUN apt-get update 

RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_220.x | sudo -E bash - 

RUN apt-get upgrade -y

RUN apt-get install -y nodejs

COPY package.json package.json 
# this is source : destination file 
COPY package-lock.json package-lock.json
COPY main.js main.js

RUN npm install 

ENTRYPOINT ["node","main.js"]
# this states that whenever will run the container just run this file

