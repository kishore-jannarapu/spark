FROM spark-base:3.1.1-hadoop3.2

LABEL maintainer="Gezim Sejdiu <g.sejdiu@gmail.com>, Giannis Mouchakis <gmouchakis@gmail.com>"

COPY worker.sh /

ENV SPARK_WORKER_WEBUI_PORT 8081
ENV SPARK_WORKER_LOG /spark/logs
ENV SPARK_MASTER "spark://spark-master:7077"


RUN echo "http://dl-8.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
     && apk --no-cache --update-cache add postgresql-dev g++ python3-dev py3-pip \
     && ln -s /usr/include/locale.h /usr/include/xlocale.h \
     && pip3 install setuptools wheel \
     && pip3 install numpy

EXPOSE 8081

CMD ["/bin/bash", "/worker.sh"]
