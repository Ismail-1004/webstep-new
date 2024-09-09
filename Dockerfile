FROM node:18.12.0 as build-stage

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

FROM node:18.12.0

WORKDIR /app

COPY --from=build-stage /app/dist ./dist
COPY --from=build-stage /app/package*.json ./

RUN npm install --production

EXPOSE 3000

CMD ["vite"]
