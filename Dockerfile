FROM centos
#RUN yum update
RUN yum install -y http://caucho.com/download/rpm-6.8/4.0.63/x86_64/resin-4.0.63-1.x86_64.rpm
RUN yum install -y java-1.8.0-openjdk-devel

COPY index.jsp /var/resin/webapps/ROOT/

EXPOSE 8080
ENTRYPOINT ["/usr/local/share/resin-4.0.63/bin/resinctl"]
CMD ["console"]

#Reference
# https://github.com/idi-ops/docker-resin
# https://hub.docker.com/r/expertsystems/resin/~/dockerfile/
# https://www.iyunv.com/thread-163040-1-1.html