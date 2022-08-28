FROM docker.io/node
ENV NODEJS_HOME=/opt/nodejs
RUN mkdir -p /opt/nodejs
  
WORKDIR /opt/nodejs

RUN npm install express --save 
    
COPY app.js $NODEJS_HOME/server/src/app.js

CMD node $NODEJS_HOME/server/src/app.js
