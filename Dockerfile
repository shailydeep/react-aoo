FROM node:alpine3.16 
WORKDIR /myapp
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build
CMD ["npm", "start"]
