FROM danielsomerfield/java-app-base

RUN mkdir /opt/service
ADD build/libs/app-secret-reference-implementation.jar /opt/service/lib

ENTRYPOINT ["java", "-jar", "/opt/service/lib/app-secret-reference-implementation.jar"]
