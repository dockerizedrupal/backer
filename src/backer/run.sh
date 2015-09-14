#!/usr/bin/env bash

puppet apply --modulepath=/src/backer/run/modules /src/backer/run/run.pp

supervisord -c /etc/supervisor/supervisord.conf
