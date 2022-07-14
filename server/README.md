## Simulate a hosted environment on your own machine

You can run this example on your own machine using Docker to simulate
running in a hosted environment.

```shell
$ docker build -t hello .
...

$ docker run -it -p 8080:8080 --name app hello
Listening on :8080
```

From another terminal:

```shell
curl http://localhost:8080
Hello, World!
```

If you're curious about the size of the image you created, enter:

```shell
$ docker image ls hello
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
hello        latest    3f23c737877b   1 minute ago     11.6MB
```

## Clean up

When finished, clean up by entering:

```shell
docker rm -f app        # remove the container
docker image rm hello   # remove the image
```

## Makefile

If you're familiar with `make` and have it in your path, you can use the
provided `Makefile` for convenience while developing and testing your
source code locally until ready to test in a container or deploy it. The
following targets are supported:

* `make build` - this is the default target and will generate `bin/server.dart`
* `make clean` - clears build_runner cache and removes the `bin/server.dart`
* `make test`  - runs `clean` and `build` targets, then runs tests
* `make run` - runs the `build` target and then starts the Dart function
  server locally