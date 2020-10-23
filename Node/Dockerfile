FROM node
WORKDIR /usr/src/app
COPY index.js . 
COPY public .
COPY router ./router
COPY package.json .
COPY package-lock.json .
COPY router .

RUN npm install 

EXPOSE 8080
CMD [ "node", "/usr/src/app/index" ]


