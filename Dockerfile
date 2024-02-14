FROM node:latest

WORKDIR /app
COPY ./src ./src
COPY ./data ./data
COPY ./package.json ./package.json
RUN yarn

COPY ./medusa-config.js ./medusa-config.js
RUN yarn global add @medusajs/medusa-cli@latest

COPY ./tsconfig.server.json ./tsconfig.server.json
COPY ./tsconfig.json ./tsconfig.json
RUN yarn build

COPY ./start.sh ./start.sh
ENTRYPOINT ["bash", "./start.sh"]