.PHONY: all build clean deploy
all: build

GO_PIPELINE_LABEL ?= 0

build:
	docker build --tag "danielsomerfield/hello-secret-world:${GO_PIPELINE_LABEL}" \
	    --tag "danielsomerfield/hello-secret-world:latest" \
	    --build-arg GO_PIPELINE_LABEL=${GO_PIPELINE_LABEL} .

push: build
	./pipeline/push_container.sh

clean:

deploy:
	kubectl apply -f ./kubernetes/go-cd-server.yml
    kubectl set image deployment danielsomerfield/hello-secret-world \
        danielsomerfield/hello-secret-world=nginx:${GO_PIPELINE_LABEL} --record