FROM         ubuntu:17.10
MAINTAINER   Patrick Holthaus
CMD          bash

RUN mkdir -p /home/tmp
WORKDIR /home/tmp

RUN apt-get -qq update
RUN apt-get -qq install -y --no-install-recommends qpdf graphicsmagick-imagemagick-compat
RUN apt-get -qq install -y --no-install-recommends texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra

ADD . .
