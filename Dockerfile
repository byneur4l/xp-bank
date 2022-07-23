FROM node:16
WORKDIR /app
RUN curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm
COPY . .
RUN pnpm install --frozen-lockfile --prod
COPY . .
RUN pnpm setup
RUN pnpm i