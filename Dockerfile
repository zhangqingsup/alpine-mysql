FROM alpine:3.7
MAINTAINER ZhangQing <zhangqingsup@qq.com>

WORKDIR /app
VOLUME /app
COPY startup.sh /startup.sh

RUN set -ex \
  && echo "https://mirrors.aliyun.com/alpine/v3.7/main/" > /etc/apk/repositories  \
  && echo "https://mirrors.aliyun.com/alpine/v3.7/community/" >> /etc/apk/repositories  \
  && apk update  \
  && apk upgrade  \
  && apk add vim bash bash-doc bash-completion \
  && apk add mysql mysql-client \
  && rm -f /var/cache/apk/*
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306
CMD ["/startup.sh"]
