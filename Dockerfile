FROM node:latest

WORKDIR /app
COPY ./src ./src
COPY ./package.json ./package.json
RUN npm i

COPY ./medusa-config.js ./medusa-config.js
RUN npm i -g @medusajs/medusa-cli@latest

COPY ./tsconfig.server.json ./tsconfig.server.json
COPY ./tsconfig.json ./tsconfig.json
RUN npm run build

COPY ./data ./data
COPY ./start.sh ./start.sh
ENTRYPOINT ["bash", "./start.sh"]