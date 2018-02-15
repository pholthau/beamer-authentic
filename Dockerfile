FROM         ubuntu:17.10
MAINTAINER   Patrick Holthaus
CMD          bash

RUN mkdir -p /home/tmp
WORKDIR /home/tmp

RUN apt-get update > /dev/null
RUN apt-get install -y --no-install-recommends qpdf graphicsmagick-imagemagick-compat ghostscript > /dev/null
RUN apt-get install -y --no-install-recommends texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra > /dev/null

ADD . .
