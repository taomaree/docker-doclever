FROM node:8.12-stretch

ENV APP="DOClever" VER="6.2.0" 
    
WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates wget curl git && \
    wget -c https://github.com/sx1989827/DOClever/archive/${VER}.tar.gz && \
    tar zxfv ${VER}.tar.gz && \
    yarn install -g pm2 forever 

CMD ["forever", "start", "Server/bin/www"]
