FROM tomcat:8.5.37-jre8
MAINTAINER kalyani <kalyaniallu95@gmail.com>
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install default-jdk -y
ADD https://kalyani123.s3-us-west-2.amazonaws.com/jobs/sample-release-2/2/target/mahaLogin-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
