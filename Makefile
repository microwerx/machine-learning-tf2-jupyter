
.PHONY: build run push

build:
	docker build --pull --rm -ti -f "machine-learning-tf2-jupyter\Dockerfile" -t microwerx/machine-learning-tf2-jupyter:latest "machine-learning-tf2-jupyter"

run:
	docker run -u 1000:1000 -p 8888:8888 -it --rm ml-tf1

push:
	docker push microwerx/machine-learning-tf2-jupyter:latest
