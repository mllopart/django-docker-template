FROM node:boron
MAINTAINER Marc Llopart "mllopart@the-fox-lab.com"

WORKDIR /usr/src/app


COPY ./nodejs/bookmark-scrap .
RUN npm install

EXPOSE 3000
CMD ["npm", "start"]
