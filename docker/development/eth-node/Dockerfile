FROM node:22.17.0-alpine as unlock-eth-node
LABEL Unlock <ops@unlock-protocol.com>

USER root
RUN mkdir /app
RUN chown -R node:node /app

USER node
WORKDIR /app

# install deps
COPY --chown=node package.json package.json
COPY --chown=node yarn.lock yarn.lock
COPY --chown=node .yarn .yarn
COPY --chown=node .yarnrc.yml .yarnrc.yml
COPY --chown=node package.tgz package.tgz
COPY --chown=node contract_package.tgz contract_package.tgz

# add files
COPY --chown=node . .

RUN yarn

EXPOSE 8545
CMD [ "yarn", "hardhat", "node", "--hostname", "0.0.0.0" ]
