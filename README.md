
# Supported tags and respective `Dockerfile` links

- [`3.8`, `latest` (*3.8/Dockerfile*)](https://github.com/xxlabaza/alpine/blob/master/Dockerfile)
- [`3.7` (*3.7/Dockerfile*)](https://github.com/xxlabaza/alpine/blob/8b985cf87eba2d4e381a37c69ede81df26aacfd6/Dockerfile)
- [`3.6` (*3.6/Dockerfile*)](https://github.com/xxlabaza/alpine/blob/31f34c435191ceb67c799d099d6d61598cb2785d/Dockerfile)
- [`1.1` (*1.1/Dockerfile*)](https://github.com/xxlabaza/alpine/blob/4c4205550c4a9b004bc1c3ed85403e9f0a9f122c/Dockerfile)

# How to use this image

## Usage

Use like you would any other base image:

```dockerfile
FROM xxlabaza/alpine
RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]
```

The image has `ONBUILD` action for setting up `time zone` with default value - Europe/Moscow. You can rewrite the default value like this:

```dockerfile
FROM xxlabaza/alpine
ENV TZ Europe/Paris
RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]
```

# Supported Docker versions

This image is officially supported on Docker version 1.12.3.

Support for older versions (down to 1.6) is provided on a best-effort basis.

Please see [the Docker installation documentation](https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.

# User Feedback

## Issues

If you have any problems with or questions about this image, please contact me through a [GitHub issue](https://github.com/xxlabaza/alpine/issues).

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; I am always thrilled to receive pull requests, and do my best to process them as fast as I can.

Before you start to code, I recommend discussing your plans through a [GitHub issue](https://github.com/xxlabaza/alpine/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
