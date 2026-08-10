FROM node:24-alpine AS dependencies

WORKDIR /usr/src/app/

COPY package.json .

RUN npm install --only=production


FROM node:24-alpine

LABEL maintainer="Sandeep Kumar"
LABEL description="This is a hotel booking platform built on nodejs"

COPY --from=dependencies /usr/src/app/node_modules ./node_modules

COPY . . 

ENV HOST=0.0.0.0
ENV PORT=3000

EXPOSE 3000

ENTRYPOINT ["node", "app.js"]