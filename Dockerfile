FROM node:lts-buster
RUN git clone https://github.com/https://github.com/humphreymbise/King_ZEZE-MD-v4
WORKDIR /root/King_ZEZE-MD-v4
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
