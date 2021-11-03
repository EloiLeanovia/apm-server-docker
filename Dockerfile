FROM docker.elastic.co/apm/apm-server:7.13.1
USER root
RUN chown root:apm-server /usr/share/apm-server/apm-server.yml
USER apm-server
