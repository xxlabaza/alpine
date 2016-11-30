# Overview

Custom and extendable Alpine-based image with installed time zone and language.

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
