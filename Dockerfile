FROM node:lts-alpine
workdir /app
copy . .
run npm install --production
cmd ["npm" , "run", "start:prod"]
expose 3000
