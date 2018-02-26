FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.2.2

RUN yum -y update
RUN yum -y install yum-utils
RUN yum -y groupinstall development
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm
RUN yum -y install python36u
RUN yum -y install python36u-pip
RUN pip3.6 install elasticsearch-curator
ENV LC_ALL=en_US.utf-8
ENV LANG=en_US.utf-8