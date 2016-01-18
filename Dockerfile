FROM kitpages/symfony2-nginx

MAINTAINER Kitpages <system@kitpages.fr>

RUN apt-get update && apt-get -y install \
    build-essential \
    php5-curl \
    php5-mongo \
    php5-gd \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD start.sh /root/start.sh
