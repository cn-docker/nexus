FROM sonatype/nexus3
LABEL maintainer="CN Services <noninojulian@gmail.com>"

USER root

RUN yum update --assumeyes && \
    yum install --assumeyes unzip wget

ENV GROOVY_VERSION 2.5.9
RUN echo "Installing Groovy SDK" && \
    wget https://bintray.com/artifact/download/groovy/maven/apache-groovy-binary-$GROOVY_VERSION.zip && \
    unzip apache-groovy-binary-$GROOVY_VERSION.zip &&\
    rm -rf apache-groovy-binary-$GROOVY_VERSION.zip && \
    mv groovy-$GROOVY_VERSION /opt/groovy
ENV GROOVY_HOME /opt/groovy
ENV PATH="$PATH:$GROOVY_HOME/bin:$GROOVY_HOME/lib"

USER nexus

COPY entrypoint.sh /tmp/entrypoint.sh
COPY scripts /tmp/scripts

ENTRYPOINT ["/tmp/entrypoint.sh"]
