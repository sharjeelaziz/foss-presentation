# Makefile for mkslides presentation

.PHONY: build run clean slides

build:
	docker buildx build --load -t mkslides-container .

run:
	docker run -it --rm -p 8000:8000 -v "$$(PWD)/slides:/slides" mkslides-container mkslides serve -a 0.0.0.0:8000 /slides 

slides:
	docker run -it --rm -p 8000:8000 -v "$$(PWD)/slides:/slides" mkslides-container mkslides build /slides 

clean:
	docker rmi mkslides-container
