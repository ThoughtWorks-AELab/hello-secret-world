FROM danielsomerfield/java-app-base

RUN mkdir -p /opt/service

ARG GO_PIPELINE_LABEL=0
ADD build/libs/hello-secret-world-$GO_PIPELINE_LABEL.jar /opt/service/lib/
ENTRYPOINT ["java", "-jar", "/opt/service/lib/hello-secret-world-$GO_PIPELINE_LABEL.jar"]
