FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm install -g @nestjs/cli
RUN npm install --production
RUN i --save-dev @type/node
RUN npm run build
CMD ["npm" , "run", "start"]
EXPOSE 3000
