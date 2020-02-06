FROM tomcat:8.5.37-jre8
MAINTAINER kalyani <kalyaniallu95@gmail.com>
RUN apt-get update
ADD https://kalyani1234.s3-us-west-2.amazonaws.com/jobs/release2/1/target/mahaLogin-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
