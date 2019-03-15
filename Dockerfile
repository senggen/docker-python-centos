FROM centos:7

RUN yum update && \
    yum install yum-utils && \
    yum groupinstall development && \
    yum install https://centos7.iuscommunity.org/ius-release.rpm && \
    yum install python36u && \
    yum install python36u-pip && \
    yum install python36u-devel
