# Docker AWS CLI with jq
Automatically updated Docker image for running tasks using the latest version of AWS CLI and jq.

For use in e.g.:
- CI (Gitlab, Travis, Jenkins, CircleCI)
- Local development

[![DockerHub Badge](http://dockeri.co/image/cbytedigital/awscli-jq)](https://hub.docker.com/r/cbytedigital/awscli-jq/)

## Build

```
docker build -t cbytedigital/awscli-jq .
```

## Usage

### CLI

Running the container is quite simple and only requires two steps, mount a directory and provide AWS CLI credentials.
The following examples should be sufficient for simple usage using a CLI on Linux. For Windows Command Line use `%cd%` and for PowerShell use `${PWD}` instead of `$(pwd)`.

Example using environment variables:

```shell
docker run -i -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY cbytedigital/awscli-jq aws ...
```

Example mounting AWS CLI configuration files:

```shell
docker run -i -w /work -v $(pwd):/work -v ~/.aws:/home/root/.aws cbytedigital/awscli-jq aws ...
```

```shell
docker run -i -w /work -v $(pwd):/work -v ~/.aws:/home/root/.aws cbytedigital/awscli-jq jq ...
```

## Postcardware

This Docker image is completely free to use. If it makes it to your production environment we would highly appreciate you sending us a postcard from your hometown! 👏🏼

Our address is: CBYTE Software B.V., Parallelweg 27, 5223AL 's-Hertogenbosch, Netherlands.

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.