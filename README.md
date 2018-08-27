
# CertSpotter Docker

This is a Docker image of [SSLMate's CertSpotter](https://github.com/SSLMate/certspotter) tool


## Building 

The image can be built as 'lanrat/certspotter' by running `make` with the provided Makefile.

## Running

Create a `watchlist` and mount it as a volume inside the container

For example:

````

docker run -it --rm \
    -v $(pwd)/_data/:/root/.certspotter/ \
    lanrat/certspotter

```
