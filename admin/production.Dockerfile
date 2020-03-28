FROM node:12

# install packages
WORKDIR /application
COPY package.json .
RUN yarn --production

# copy code

COPY dist/src/* ./

# start
CMD [ "./node_modules/concurrently/bin/concurrently.js", "-n", "server,worker", "node index.js", "node index-worker.js" ]