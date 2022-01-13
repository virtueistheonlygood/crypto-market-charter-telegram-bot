FROM node:latest
ENV NODE_ENV=production

WORKDIR /app

COPY [".env", "package.json", "package-lock.json*", "./"]

RUN npm install --production
RUN npm i dotenv

COPY . .

CMD [ "node", "index.js" ]
