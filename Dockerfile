FROM node:19-bullseye

EXPOSE 3000

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
WORKDIR /app
RUN mkdir -p /app

COPY package.json yarn.lock /app/
RUN yarn install
COPY . /app

CMD ["yarn", "docker:start"]
