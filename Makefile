.PHONY: all build clean
all: build

build:
	docker build --tag "danielsomerfield/hello-secret-world" .

clean:
