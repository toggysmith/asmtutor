# Running locally

## Open a Docker container

Use Docker to build an image:

```bash
docker build --tag nasm . --platform linux/386
```

Use Docker to run the image:

```bash
docker run --platform linux/386 -it nasm
```

## Building individual lessons

Navigate to the lesson directory and run:

```bash
./build.sh
```

The resulting file can be executed with:

```bash
./app
```

## Building all the lessons at once

In the root directory run:

```bash
./build-all.sh
```
