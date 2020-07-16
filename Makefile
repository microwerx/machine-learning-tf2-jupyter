
.PHONY: build irun push container crun

build:
	docker build --pull --rm -f "machine-learning-tf2-jupyter\Dockerfile" -t microwerx/machine-learning-tf2-jupyter:latest "machine-learning-tf2-jupyter"

irun:
	docker run --gpus all -u 1000:1000 -p 8888:8888 -it --mount type=bind,src="/z/github/machine-learning-tf2-jupyter/notebooks",dst=/tf/notebooks --rm ml-tf2
	

push:
	docker push microwerx/machine-learning-tf2-jupyter:latest

container:
	docker create --name ml-tf2 -it --mount type=bind,src="$(CURDIR)/notebooks",dst=/tf/notebooks microwerx/machine-learning-tf2-jupyter:latest

crun:
	docker run --gpus all -u 1000:1000 -p 8888:8888 -it --mount type=bind,src="$(CURDIR)/notebooks",dst=/tf/notebooks --rm microwerx/machine-learning-tf2-jupyter:latest
