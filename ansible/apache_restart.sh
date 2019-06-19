#!/usr/bin/env bash

APASTATUS=$(/usr/bin/curl -o /dev/null --silent --head --write-out "%{http_code}" "127.0.0.1")

if [[ $APASTATUS -ne 200 ]]; then
  service apache2 restart
fi