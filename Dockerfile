FROM docker.io/node
ENV NODEJS_HOME=/opt/nodejs
RUN mkdir -p /opt/nodejs
  
WORKDIR /opt/nodejs

RUN npm install express --save \
    && npm install pm2@latest -g 

RUN chmod  775 /
    
COPY app.js $NODEJS_HOME/server/src/app.js
COPY startNode.sh /opt/nodejs/bin/

RUN chmod +x /opt/nodejs/bin/startNode.sh
USER node

CMD /opt/nodejs/bin/startNode.sh
