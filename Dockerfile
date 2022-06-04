#Step 1
FROM alpine

#Step 2
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.9/main' >> /etc/apk/repositories
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.9/community' >> /etc/apk/repositories
RUN apk update
RUN apk add mongodb

#Step 3
VOLUME [ "/data/db" ]
WORKDIR /data
EXPOSE 27017
CMD ["mongod"]
