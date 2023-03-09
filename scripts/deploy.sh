#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa.pub \
  target/SpringBootJSP-0.0.1-SNAPSHOT.jar \
  root@94.154.11.220:/home/andrey/

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa.pub root@94.154.11.220 << EOF

pgrep java |  | xargs kill -9
nohup java -jar SpringBootJSP-0.0.1-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'