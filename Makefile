#REGISTRY_NAME ?=
IMAGE_NAME = vault
VERSION = 1.3.0
IMAGE_TAG = $(REGISTRY_NAME)/$(IMAGE_NAME):$(VERSION)

-include .env

.PHONY: build publish

build:
	docker build --build-arg VAULT_VERSION=$(VERSION) --no-cache -t $(IMAGE_TAG) .

publish: 
	docker push $(IMAGE_TAG)