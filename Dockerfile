FROM docker.io/centos

RUN mkdir -p /opt/nodejs
NODEJS_HOME=/opt/nodejs

RUN yum install make gcc-c++ tar xz gzip wget python2 nodejs npm -y

WORKDIR /opt/nodejs

RUN npm config set strict-ssl=false \

    && npm install pm2 -no-optional -g --no-shrinkwrap \
    && npm install -g grunt-cli \
    && npm install -g winston \
    && npm install -g winston-tcp-graylog \
    && npm install -g properties-reader \
    && npm install -g gulp-cli \
    && npm install -D gulp

COPY app.js $NODEJS_HOME/server/src/app.js

pm2 start -x $NODEJS_HOME/server/src/app.js --no-daemon
