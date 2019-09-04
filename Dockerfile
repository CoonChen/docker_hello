FROM spantree/ubuntu-oraclejdk8
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Xms128m","-Xmx1024m","-Djava.security.egd=file:/dev/.urandom","-jar","/app.jar"]
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone