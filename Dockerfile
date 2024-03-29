FROM node:11-alpine
COPY price-feed.js /src/price-feed.js
COPY entrypoint.sh /entrypoint.sh
RUN npm i https ethers fs
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
