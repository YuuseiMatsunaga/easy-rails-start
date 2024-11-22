CONTAINER_NAME = rails-container
IMAGE_NAME = rails-sample-app

build:
	docker build -t $(IMAGE_NAME) . -f Dockerfile.local
run:
	docker run --rm -p 3000:3000 \
		-v $(PWD):/usr/src/app \
		-v $(PWD)/vendor/bundle:/usr/src/app/vendor/bundle \
		--name $(CONTAINER_NAME) $(IMAGE_NAME)
c:
	docker exec -it $(CONTAINER_NAME) bundle exec rails c
bash:
	docker exec -it $(CONTAINER_NAME) bash
stop:
	@docker ps -q -f name=$(CONTAINER_NAME) | xargs -r docker stop
