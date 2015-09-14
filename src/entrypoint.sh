#!/usr/bin/env bash

case "${1}" in
  build)
    /bin/su - root -mc "apt-get update && /src/backer/build.sh && /src/backer/clean.sh"
    ;;
  run)
    /bin/su - root -mc "source /src/backer/variables.sh && /src/backer/run.sh"
    ;;
esac
