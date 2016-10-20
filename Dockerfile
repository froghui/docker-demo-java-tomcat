FROM FROM maven:3.2-jdk-7-onbuild

ADD pom.xml /tmp/build/
RUN cd /tmp/build && mvn -q dependency:resolve

ADD src /tmp/build/src
RUN cd /tmp/build && mvn -q -DskipTests=true package

