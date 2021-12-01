FROM node

WORKDIR /srv
COPY server.js .
RUN mkdir html
COPY html html
COPY package.json .

RUN npm install

CMD ["node", "server.js"]
