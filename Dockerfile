FROM danielsomerfield/java-app-base

RUN mkdir /opt/service
ADD build/libs/hello-secret-world.jar /opt/service/lib

ENTRYPOINT ["java", "-jar", "/opt/service/lib/hello-secret-world.jar"]
