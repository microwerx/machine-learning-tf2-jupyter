Machine Learning Jupyter
========================


Build Instructions
------------------

```
docker build --pull --rm -ti -f "ml-tf1\Dockerfile" -t ml-tf1:latest "ml-tf1"
```

Run Instructions
----------------

```
docker run -u 1000:1000 -p 8888:8888 -it --rm ml-tf1
```
