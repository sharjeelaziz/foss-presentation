.PHONY: build run serve build-slides help bash clean

# Image name
IMAGE_NAME = foss-presentation

# Default slides directory (relative to project root)
SLIDES_DIR ?= ./slides

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  build         Build the Docker image"
	@echo "  serve         Build and serve the slides (live preview on port 8000)"
	@echo "  build-slides  Build the slides without serving them"
	@echo "  bash          Start a bash shell in the container"
	@echo "  clean         Remove the Docker image"
	@echo ""
	@echo "Variables:"
	@echo "  SLIDES_DIR    Directory containing slide markdown files (default: ./slides)"
	@echo ""
	@echo "Example:"
	@echo "  make serve SLIDES_DIR=./my-presentations"

build:
	docker buildx build --load --tag $(IMAGE_NAME) .

serve: build
	docker run -it --rm -v "$$(PWD)/$(SLIDES_DIR):/slides" -p 8000:8000 \
	$(IMAGE_NAME) serve

build-slides: build
	docker run -it --rm -v "$$(PWD)/$(SLIDES_DIR):/slides" \
	$(IMAGE_NAME) build

bash: build
	docker run -it --rm -v "$$(PWD)/$(SLIDES_DIR):/slides" \
	$(IMAGE_NAME) bash

clean:
	docker rmi $(IMAGE_NAME)
