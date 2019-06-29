#!/bin/sh

# NODE=/home/deb/.nvm/versions/node/v8.10.0/bin/node
NODE_BIN=${NODE}
PWD=$(readlink -e $(dirname $0))
export env $(cat ${PWD}/.env | grep -v '^#' | xargs)
[ -z "${NODE_BIN}" ] && NODE_BIN=${NODE}
[ -z $1 ] || export TTY=$1
[ -z "${NODE_BIN}" ] && (>&2 echo "set 'NODE' environment variable") && exit 1
cd ${PWD}
# ready to run
# npm run local
${NODE_BIN} ${PWD}/node_modules/.bin/gulp server
