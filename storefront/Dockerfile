FROM node:12

# install packages
WORKDIR /application
COPY package.json .
RUN yarn

# Code
COPY . .
RUN set -eux \
  && npm run build:ssr

# start
CMD [ "yarn", "run", "serve:ssr" ]
