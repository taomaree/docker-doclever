FROM node:8.12-stretch

ENV APP="DOClever" VER="6.2.0" 
    
WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates wget curl git && \
    wget -c https://github.com/sx1989827/DOClever/archive/${VER}.tar.gz && \
    tar zxf ${VER}.tar.gz && rm -rf ${VER}.tar.gz && \
    yarn global add forever

CMD ["forever", "start", "DOClever-*/Server/bin/www"]
