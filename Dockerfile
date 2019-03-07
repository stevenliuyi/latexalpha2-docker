FROM ubuntu:18.04
MAINTAINER Yi Liu <me@yliu.io>

WORKDIR /latexalpha2

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    texlive-latex-base texlive-latex-recommended texlive-latex-extra \
    python3-pip python3-setuptools asymptote curl \
    && pip3 install mathics \
    && curl -O https://raw.githubusercontent.com/stevenliuyi/latex-alpha2/master/latexalpha2.sty \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
