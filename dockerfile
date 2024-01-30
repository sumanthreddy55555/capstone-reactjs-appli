FROM node:14-alpine as build
WORKDIR /app

COPY package.json .
RUN npm install
COPY . . 
RUN npm run build
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY --from=build /app/build .
CMD ["nginx","-g","daemon off;"]
