FROM node:16.0-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn

COPY . ./

# start app
CMD ["yarn", "start"]
