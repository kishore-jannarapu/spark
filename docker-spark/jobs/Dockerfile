FROM spark-base:3.1.1-hadoop3.2

ENV SPARK_MASTER_NAME spark-master
ENV SPARK_MASTER_PORT 7077
ENV SPARK_APPLICATION_PYTHON_LOCATION /app/app.py
ENV SPARK_APPLICATION_ARGS ""

COPY submit.sh /

RUN echo "http://dl-8.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
     && apk --no-cache --update-cache add postgresql-dev g++ python3-dev py3-pip \
     && ln -s /usr/include/locale.h /usr/include/xlocale.h \
     && pip3 install setuptools wheel \
     && pip3 install numpy
     
# Copy the requirements.txt first, for separate dependency resolving and downloading
COPY requirements.txt /app/
RUN cd /app && pip3 install -r requirements.txt

# Copy the source code
COPY ./*.py /app

CMD ["/bin/bash", "/submit.sh"]
