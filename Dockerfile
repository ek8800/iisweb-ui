FROM eclipse-temurin:17-jdk-focal

ADD webUI-0.0.1-SNAPSHOT.jar webUI-0.0.1-SNAPSHOT.jar

ENV TZ=America/New_York
#ENV TZ=EST
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 8080
ENTRYPOINT ["java", "-jar",  "webUI-0.0.1-SNAPSHOT.jar"] 
CMD ["iisurl=https://app-35724574-22ce-49ad-8842-9f24263ba57d.cleverapps.io"] 
