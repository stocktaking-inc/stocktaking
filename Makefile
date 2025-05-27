CONTAINER_NAME := stocktaking-nginx
NETWORK_NAME := stocktaking-net

.PHONY: build run

build:
	docker build -t $(CONTAINER_NAME) .

run:
	docker run -d \
		--name $(CONTAINER_NAME) \
		--network $(NETWORK_NAME) \
		-p 8080:8080 \
		-p 8443:8443 \
		$(CONTAINER_NAME)
