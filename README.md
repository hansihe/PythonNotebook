A docker image that runs a ipython notebook. Default packages include the scipy stack and several packages I use.

To build the docker image, run:

`$ docker build .`

To create and run the image, run the command below. Please note that this will only listen on localhost. Listening on anything else would be irresponsable since we don't have a password set.

`$ docker run --name <container_name> -d -p 127.0.0.1:8081:8888 -v ~/notebooks:/notebooks <image_id>`

