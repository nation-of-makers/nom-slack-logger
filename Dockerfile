FROM ruby:2.3
MAINTAINER Mike Greenberg <mike@myhacklab.org>

WORKDIR /usr/src/app/tech404logs
COPY tech404logs /usr/src/app/tech404logs
RUN chmod +x /usr/src/app/tech404logs/entrypoint.sh
RUN apt-get update && apt-get install postgresql-server-dev-9.4 -y
RUN cd /usr/src/app/tech404logs && bundle install

ENTRYPOINT ./entrypoint.sh
