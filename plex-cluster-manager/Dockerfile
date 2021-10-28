FROM node:17-alpine
COPY --chown=node:node src /app
WORKDIR /app
RUN apk add --no-cache --virtual .gyp python3 make g++ pkgconfig pixman-dev cairo-dev pango-dev
RUN mkdir /data && chown node:node /data
USER node
CMD npm run prod
