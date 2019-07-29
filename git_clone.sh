#!/bin/sh

chmod 400 .github/vinhlq.github.ro.pem
# GIT_SSH_COMMAND='ssh -i .github/vinhlq.github.ro.pem' git $@
# ssh-agent sh -c "ssh-add .github/vinhlq.github.ro.pem ; git $@"
eval $(ssh-agent -s)
ssh-add .github/vinhlq.github.ro.pem
git clone git@github.com:vinhlq/mht-zigbee-examples-silabs-react.git
ssh-agent -k
