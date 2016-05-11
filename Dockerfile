FROM haskell:7.10

MAINTAINER Achilleas Pipinellis <axilleas@axilleas.me>

RUN wget https://github.com/jgm/pandoc/releases/download/1.17.0.2/pandoc-1.17.0.2-1-amd64.deb

RUN dpkg -i pandoc-1.17.0.2-1-amd64.deb

ENTRYPOINT ["/usr/bin/pandoc"]

CMD ["--help"]
