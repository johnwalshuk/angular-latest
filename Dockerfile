FROM node:16
RUN npm i -g @angular/cli
RUN mkdir /home/node/app && chown node:node /home/node/app
RUN mkdir /home/node/app/node_modules && chown node:node /home/node/app/node_modules
WORKDIR  /home/node/app
USER node
# COPY --chown=node:node package.json package-lock.json ./
# RUN npm ci --quiet
# COPY --chown=node:node . .