#!/bin/sh

chmod 400 ssh.rsa.pem
# GIT_SSH_COMMAND='ssh -i ssh.rsa.pem' git $@
# ssh-agent sh -c "ssh-add ssh.rsa.pem; git $@"
eval $(ssh-agent -s)
ssh-add ssh.rsa.pem
git $@
ssh-agent -k