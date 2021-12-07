FROM alpine

LABEL "repository"="https://github.com/codions/git-sync"
LABEL "homepage"="https://github.com/codions/git-sync"
LABEL "maintainer"="Codions <devs@codions.com>"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
