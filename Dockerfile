FROM sercankaraoglu/java-8

MAINTAINER Sercan Karaoglu <hsercankaraoglu@gmail.com>

RUN mkdir /opt/app

RUN curl -fL http://archive.apache.org/dist/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz | tar xzf - -C /opt/app && mv /opt/app/zookeeper-3.4.8 /opt/app/zookeeper

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle


EXPOSE 2181 2888 3888

CMD ["/opt/app/zookeeper/bin/zkServer.sh","start-foreground"]