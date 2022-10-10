FROM bakney/puppeteer-base:latest

USER root

COPY . /app

RUN cd /app && npm install --quiet
RUN cd /app npm i puppeteer-extra
RUN cd /app/node_modules/puppeteer && npm run install

EXPOSE 3000

WORKDIR /app

CMD npm run start
