FROM node

WORKDIR /app

COPY .babelrc .eslintignore .eslintrc package.json prepublish.js webpack.config.js ./
RUN npm install

COPY src src
COPY test test

CMD ["npm", "test"]
