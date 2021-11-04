FROM docker.elastic.co/apm/apm-server:7.15.1
COPY apm-server.yml /usr/share/apm-server/apm-server.yml
USER root
RUN chown root:apm-server /usr/share/apm-server/apm-server.yml
RUN yum install -y sudo
RUN usermod -aG wheel apm-server
USER apm-server
