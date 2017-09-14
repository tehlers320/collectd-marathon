FROM alpine:3.6

MAINTAINER Tim Ehlers <tehlers@expedia.com>

RUN apk add --no-cache python2 collectd collectd-python

RUN mkdir /usr/share/collectd/plugins

COPY marathon.py /usr/share/collectd/plugins/marathon.py

COPY marathon.conf /etc/collectd.d/marathon.conf

COPY collectd.conf /etc/collectd/collectd.conf
