
FROM java:openjdk-8-jre

ARG ZOOKEEPER_VERSION=3.7.0

#Download Zookeeper
RUN wget -q https://downloads.apache.org/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/apache-zookeeper-${ZOOKEEPER_VERSION}-bin.tar.gz

#Install
RUN tar -xzf apache-zookeeper-${ZOOKEEPER_VERSION}-bin.tar.gz -C /opt

#Configure
RUN mv /opt/apache-zookeeper-${ZOOKEEPER_VERSION}-bin /opt/apache-zookeeper && mv /opt/apache-zookeeper/conf/zoo_sample.cfg /opt/apache-zookeeper/conf/zoo.cfg

ENV ZK_HOME /opt/apache-zookeeper
RUN sed  -i "s|/tmp/zookeeper|$ZK_HOME/data|g" $ZK_HOME/conf/zoo.cfg; mkdir $ZK_HOME/data

EXPOSE 2181 2888 3888

WORKDIR /opt/apache-zookeeper

CMD ["/opt/apache-zookeeper/bin/zkServer.sh", "start-foreground"]