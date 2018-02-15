# Fill in this Dockerfile to build your Docker image

FROM node:8.7
WORKDIR /
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]