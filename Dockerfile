FROM centos:7.9.2009

RUN yum -y install make rpm-build git-core erlang gcc-c++ boost-devel pugixml-devel python-devel

COPY cactus/ /opt/cactus/
COPY controlhub/ /etc/controlhub/
