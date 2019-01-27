FROM ubuntu:16.04
MAINTAINER Anton Lapitski <a.lapitski@godeltech.com>
ENV USER_ID=1000 GROUP_ID=1000
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD ./scripts /usr/src/app/scripts
ENTRYPOINT ["/bin/sh", "-c", "/usr/src/app/scripts/entry.sh"]


