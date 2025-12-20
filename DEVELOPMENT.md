# Development

## Build the image

```
$ docker build . -t szabgab/python
```

## Tag

```
$ docker tag mydocker:latest szabgab/python:25.10.01
$ docker tag mydocker:latest szabgab/python:latest
```

## Push

```
$ docker push szabgab/python:25.10.01
$ docker push szabgab/python:latest
```


