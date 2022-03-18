FROM node:16.14-alpine

RUN mkdir -p /app/frontend && chown -R node:node /app
WORKDIR /app

USER node
COPY --chown=node:node package.json package-lock.json* ./
RUN npm install --save-dev chokidar
RUN npm install --no-optional && npm cache clean --force
ENV PATH /app/node_modules/.bin:$PATH

WORKDIR /app/frontend
COPY --chown=node:node . .