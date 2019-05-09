#!/bin/sh

chmod 400 ssh.rsa.pem
GIT_SSH_COMMAND='ssh -i ssh.rsa.pem' git $@
