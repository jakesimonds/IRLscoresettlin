FROM node:20-slim
WORKDIR /app
RUN npm init -y && npm install dotenv ethers
COPY server.js TapBet.abi.json .env ./
CMD ["node", "server.js"]
