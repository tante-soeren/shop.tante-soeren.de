FROM node:12

# install packages
WORKDIR /application
COPY package.json .
RUN yarn

# Code
VOLUME [ "/application" ]

# start
CMD [ "yarn", "start" ]