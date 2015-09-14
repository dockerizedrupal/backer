#!/usr/bin/env bash

if [ -n "${MYSQL_HOST}" ]; then
  export FACTER_MYSQL_HOST="${MYSQL_HOST}"

  if [ -z "${MYSQL_PORT}" ]; then
    MYSQL_PORT="3306"
  fi

  export FACTER_MYSQL_PORT="${MYSQL_PORT}"
else
  MYSQL_PORT="$(echo "${MYSQL_PORT}" | sed 's/tcp:\/\///')"

  export FACTER_MYSQL_HOST="$(echo "${MYSQL_PORT}" | cut -d ":" -f1)"
  export FACTER_MYSQL_PORT="$(echo "${MYSQL_PORT}" | cut -d ":" -f2)"
fi

if [ -z "${MYSQL_USERNAME}" ]; then
  export MYSQL_USERNAME="root"
fi

export FACTER_MYSQL_USERNAME="${MYSQL_USERNAME}"

if [ -z "${MYSQL_PASSWORD}" ]; then
  export MYSQL_PASSWORD="root"
fi

export FACTER_MYSQL_PASSWORD="${MYSQL_PASSWORD}"

if [ -z "${CRON_EXPRESSION}" ]; then
  export CRON_EXPRESSION="0 0 * * *"
fi

export FACTER_CRON_EXPRESSION="${CRON_EXPRESSION}"

if [ -z "${ARCHIVE}" ]; then
  export ARCHIVE="Off"
fi

export FACTER_ARCHIVE="${ARCHIVE}"

export FACTER_ARCHIVE_ADD="${ARCHIVE_ADD}"

if [ -z "${S3}" ]; then
  export S3="Off"
fi

export FACTER_S3="${S3}"

export FACTER_S3_ACCESS_KEY_ID="${S3_ACCESS_KEY_ID}"
export FACTER_S3_SECRET_ACCESS_KEY="${S3_SECRET_ACCESS_KEY}"
export FACTER_S3_REGION="${S3_REGION}"
export FACTER_S3_BUCKET="${S3_BUCKET}"

if [ -z "${S3_MAX_RETRIES}" ]; then
  export S3_MAX_RETRIES="10"
fi

export FACTER_S3_MAX_RETRIES="${S3_MAX_RETRIES}"

if [ -z "${S3_RETRY_WAITSEC}" ]; then
  export S3_RETRY_WAITSEC="30"
fi

export FACTER_S3_RETRY_WAITSEC="${S3_RETRY_WAITSEC}"

if [ -z "${S3_KEEP}" ]; then
  export S3_KEEP="30"
fi

export FACTER_S3_KEEP="${S3_KEEP}"

if [ -z "${HIPCHAT}" ]; then
  export HIPCHAT="Off"
fi

export FACTER_HIPCHAT="${HIPCHAT}"

export FACTER_HIPCHAT_TOKEN="${HIPCHAT_TOKEN}"
export FACTER_HIPCHAT_FROM="${HIPCHAT_FROM}"
export FACTER_HIPCHAT_ROOMS_NOTIFIED="${HIPCHAT_ROOMS_NOTIFIED}"
