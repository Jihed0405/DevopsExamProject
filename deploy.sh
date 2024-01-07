#!/bin/bash
docker build -t jihedpfe/express-rest-es2017-boilerplate:latest .
docker push jihedpfe/express-rest-es2017-boilerplate:latest

#ssh deploy@$DEPLOY_SERVER << EOF
docker pull jihedpfe/express-rest-es2017-boilerplate
docker stop api-boilerplate || true
docker rm api-boilerplate || true
#docker rmi jihedpfe/express-rest-es2017-boilerplate:current || true
#docker tag jihedpfe/express-rest-es2017-boilerplate:latest danielfsousa/express-rest-es2017-boilerplate:current
docker run -d --restart always --name api-boilerplate -p 2222:22 jihedpfe/express-rest-es2017-boilerplate:latest
#EOF
