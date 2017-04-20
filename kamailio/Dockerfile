FROM ubuntu:xenial

RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xfb40d3e6508ea4c8
RUN echo "deb http://deb.kamailio.org/kamailio44 xenial main" >> etc/apt/sources.list
RUN echo "deb-src http://deb.kamailio.org/kamailio44 xenial main" >> etc/apt/sources.list
RUN apt-get update -qq && apt-get install --no-install-recommends --no-install-suggests -qqy rsyslog kamailio kamailio-utils-modules && rm -rf /var/lib/apt/lists/*

WORKDIR /

RUN echo "local0.*                        -/var/log/kamailio.log" >> /etc/rsyslog.conf

COPY run.sh /run.sh

CMD /run.sh
