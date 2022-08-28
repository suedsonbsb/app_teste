NODEJS_HOME=/opt/nodejs
echo "######### INICIALIZANDO NODEJS ##########"
cd /tmp
pm2 start -x $NODEJS_HOME/server/src/app.js --no-daemon
