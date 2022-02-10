# php-linter
custom ruleset and Dockerfile for phpcs and phpmd

## Usage
docker run --rm -v ${pwd}:/app php-linter phpcs --standard=exPSR12 /app