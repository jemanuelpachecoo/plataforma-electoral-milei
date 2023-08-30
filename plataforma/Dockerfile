FROM node:19.6.1-alpine3.16

# The `node` user is the `1000:1000` user in node:alpine-based images
# https://github.com/nodejs/docker-node/blob/main/docs/BestPractices.md#non-root-user
ARG USER=node
ARG GROUP=node

RUN apk add bash

WORKDIR /app
COPY . .
RUN npm install
RUN chown -R ${USER}:${GROUP} .

USER ${USER}:${GROUP}

#ENV NODE_ENV production

#RUN npm run build

EXPOSE 3000

ENTRYPOINT ["sh", "entrypoint.sh"]
