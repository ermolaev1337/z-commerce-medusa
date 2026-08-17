FROM node:20

COPY package.json yarn.lock /app/
WORKDIR /app
RUN yarn --frozen-lockfile

RUN yarn global add @medusajs/medusa-cli@1.3.23
COPY ./ /app

COPY ./uploads /app/uploads

RUN yarn build
