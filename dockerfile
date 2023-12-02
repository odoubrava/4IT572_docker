FROM node:14

COPY . .

RUN npm install \
    && npx browserslist@latest --update-db \
    && npm run build

EXPOSE 3000

ENTRYPOINT npm run start