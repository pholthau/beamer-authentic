FROM         ubuntu:17.10
MAINTAINER   Patrick Holthaus
CMD          bash

RUN mkdir -p /home/tmp
WORKDIR /home/tmp

ADD . .

RUN apt-get -q update
RUN apt-get -q install -y --no-install-recommends qpdf graphicsmagick-imagemagick-compat
RUN apt-get -q install -y --no-install-recommends texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra

RUN mkdir build
