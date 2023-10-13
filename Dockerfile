FROM centos:centos7
MAINTAINER litianle
RUN yum install -y wget epel-release gcc make python3 \
&& pip3 install django==3.0.5 \
&& wget https://www.sqlite.org/2019/sqlite-autoconf-3270200.tar.gz \
&& tar -zxvf sqlite-autoconf-3270200.tar.gz \
&&cd sqlite-autoconf-3270200 \
&&./configure --prefix=/usr/local \
&&make \
&&make install \
&&mv /usr/bin/sqlite3 /usr/bin/sqlite3_3717 \
&&ln -s /usr/local/bin/sqlite3 /usr/bin/sqlite3 \
&& rm -rf /sqlite-autoconf-3270200*
ENV LD_LIBRARY_PATH="/usr/local/lib"
ENV TZ Asia/Shanghai
COPY ./ /app
WORKDIR /app
CMD python3 manage.py runserver 0.0.0.0:8000