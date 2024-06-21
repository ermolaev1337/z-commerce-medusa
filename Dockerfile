FROM node

COPY package.json /app/package.json
WORKDIR /app
RUN yarn

RUN yarn global add @medusajs/medusa-cli
COPY ./ /app

COPY ./uploads /app/uploads

RUN yarn build
