FROM node:16-alpine AS builder
ENV NODE_ENV production

WORKDIR /app
COPY package.json .
RUN yarn

ENV NEXT_TELEMETRY_DISABLED 1

COPY . .

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]