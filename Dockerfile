FROM codilogy/nodemon
MAINTAINER Charlie <aatty660@gmail.com>

RUN apk add --no-cache vim \
                       mariadb \
                       mariadb-client \
                       redis \
                       supervisor 


ADD start.sh /
ADD mariadb.ini /etc/supervisor.d/

RUN chmod a+x /start.sh

CMD ["/start.sh"]

 
