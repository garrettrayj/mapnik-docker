build:
	docker build -t garrettrayj/mapnik-docker .

run:
	docker run -it garrettrayj/mapnik-docker

push:
	docker push garrettrayj/mapnik-docker:latest
