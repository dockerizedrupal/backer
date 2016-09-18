#!/usr/bin/env bash

export FACTER_VERSION="2.0.0"

if [ -z "${SERVER_NAME}" ]; then
  SERVER_NAME="localhost"
fi

export FACTER_SERVER_NAME="${SERVER_NAME}"

if [ -z "${TIMEZONE}" ]; then
  TIMEZONE="Etc/UTC"
fi

export FACTER_TIMEZONE="${TIMEZONE}"

SMTP_PORT="$(echo "${SMTP_PORT}" | sed 's/tcp:\/\///')"

export FACTER_SMTP_HOST="$(echo "${SMTP_PORT}" | cut -d ":" -f1)"
export FACTER_SMTP_PORT="$(echo "${SMTP_PORT}" | cut -d ":" -f2)"

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
  MYSQL_USERNAME="container"
fi

export FACTER_MYSQL_USERNAME="${MYSQL_USERNAME}"

if [ -z "${MYSQL_PASSWORD}" ]; then
  MYSQL_PASSWORD="container"
fi

export FACTER_MYSQL_PASSWORD="${MYSQL_PASSWORD}"

if [ -z "${CRON_EXPRESSION}" ]; then
  CRON_EXPRESSION="0 0 * * *"
fi

export FACTER_CRON_EXPRESSION="${CRON_EXPRESSION}"

if [ -z "${ARCHIVE}" ]; then
  ARCHIVE="Off"
fi

if [ "${ARCHIVE}" == "True" ]; then
  ARCHIVE="On"
fi

export FACTER_ARCHIVE="${ARCHIVE}"

export FACTER_ARCHIVE_ADD="${ARCHIVE_ADD}"

if [ -z "${S3}" ]; then
  S3="Off"
fi

if [ "${S3}" == "True" ]; then
  S3="On"
fi

export FACTER_S3="${S3}"

export FACTER_S3_ACCESS_KEY_ID="${S3_ACCESS_KEY_ID}"
export FACTER_S3_SECRET_ACCESS_KEY="${S3_SECRET_ACCESS_KEY}"
export FACTER_S3_REGION="${S3_REGION}"
export FACTER_S3_BUCKET="${S3_BUCKET}"

if [ -z "${S3_MAX_RETRIES}" ]; then
  S3_MAX_RETRIES="10"
fi

export FACTER_S3_MAX_RETRIES="${S3_MAX_RETRIES}"

if [ -z "${S3_RETRY_WAITSEC}" ]; then
  S3_RETRY_WAITSEC="30"
fi

export FACTER_S3_RETRY_WAITSEC="${S3_RETRY_WAITSEC}"

if [ -z "${S3_KEEP}" ]; then
  S3_KEEP="30"
fi

export FACTER_S3_KEEP="${S3_KEEP}"

if [ -z "${MAIL}" ]; then
  MAIL="Off"
fi

if [ "${MAIL}" == "True" ]; then
  MAIL="On"
fi

export FACTER_MAIL="${MAIL}"
export FACTER_MAIL_FROM="${MAIL_FROM}"
export FACTER_MAIL_TO="${MAIL_TO}"
