FROM node:16.0-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn && yarn add typescript &&  yarn add @types/react && yarn add @types/react-dom

COPY . ./

# start app
CMD ["yarn", "start"]
