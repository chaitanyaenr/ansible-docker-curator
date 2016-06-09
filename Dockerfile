# Dockerfile for Elasticsearch-Curator
FROM fedora
MAINTAINER nelluri@redhat.com

RUN dnf -y update && dnf clean all
RUN dnf -y install unzip tar wget vim git make gcc readline-devel pcre-devel openssl-devel python-pip python redhat-rpm-config gcc-c++ python-devel && dnf clean all && pip install elasticsearch-curator

WORKDIR /opt
ADD script.py /opt
CMD ["python", "script.py"]
       




