# lighthouse-ci

- uses the npm package from https://github.com/andreasonny83/lighthouse-ci
- uses the docker image from
  - https://hub.docker.com/r/femtopixel/google-lighthouse
  - https://github.com/femtopixel/docker-google-lighthouse


## Usage:
````bash
docker run --rm -it kanti/lighthouse-ci lighthouse-ci <url>
````

## Warmup the caches:
````bash
docker run --rm -it kanti/lighthouse-ci curl --fail <url>
docker run --rm -it kanti/lighthouse-ci lighthouse-ci <url>
````


## Commandline Options:
````bash
  CLI implementation for running Lighthouse with any CI tool

  Usage
    $ docker run --rm -it kanti/lighthouse-ci lighthouse-ci <target-url>

  Example
    $ docker run --rm -it kanti/lighthouse-ci lighthouse-ci https://example.com/
    $ docker run --rm -it kanti/lighthouse-ci lighthouse-ci -s https://example.com/
    $ docker run --rm -it kanti/lighthouse-ci lighthouse-ci https://example.com/ --score=75
    $ docker run --rm -it kanti/lighthouse-ci lighthouse-ci https://example.com/ --accessibility=90 --seo=80
    $ docker run --rm -it kanti/lighthouse-ci lighthouse-ci https://example.com/ --accessibility=90 --seo=80 --report=folder

  Options
    -s, --silent                  Run Lighthouse without printing report log.
    --report=<path>               Generate an HTML report inside a specified folder.
    --filename=<filename>         Specify the name of the generated HTML report file (requires --report).
    --score=<threshold>           Specify a score threshold for the CI to pass.
    --performance=<threshold>     Specify a minimal performance score for the CI to pass.
    --pwa=<threshold>             Specify a minimal pwa score for the CI to pass.
    --accessibility=<threshold>   Specify a minimal accessibility score for the CI to pass.
    --best-practice=<threshold>   [DEPRECATED] Use best-practices instead.
    --best-practices=<threshold>  Specify a minimal best-practice score for the CI to pass.
    --seo=<threshold>             Specify a minimal seo score for the CI to pass.

  In addition to listed "lighthouse-ci" configuration flags, it is also possible to pass any native "lighthouse" flag.
  To see the full list of available flags, please refer to the official Google Lighthouse documentation at https://github.com/GoogleChrome/lighthouse#cli-options
````
