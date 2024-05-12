FROM node:lts-alpine AS build

WORKDIR /usr/src/app

COPY ["package.json", "./"]

RUN yarn install

COPY . .

RUN yarn build



FROM nginx:stable-alpine

COPY --from=build /usr/src/app/dist /usr/share/nginx/html

EXPOSE 80
