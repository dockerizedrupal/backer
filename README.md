# Backer

Backer is a simple Docker image for the awesome tool called [Backup](https://github.com/backup/backup) that allows you to define your backup jobs through environment variables.

This project is part of the [Dockerized Drupal](https://dockerizedrupal.com/) initiative.

## Run the container

    CONTAINER="backer" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      -e SERVER_NAME="localhost" \
      -e TIMEZONE="Etc/UTC" \
      -e MYSQL_HOST="" \
      -e MYSQL_PORT="3306" \
      -e MYSQL_USERNAME="container" \
      -e MYSQL_PASSWORD="container" \
      -e CRON_EXPRESSION="0 0 * * *" \
      -e S3="Off" \
      -e S3_ACCESS_KEY_ID="" \
      -e S3_SECRET_ACCESS_KEY="" \
      -e S3_REGION="" \
      -e S3_BUCKET="" \
      -e S3_MAX_RETRIES="10" \
      -e S3_RETRY_WAITSEC="30" \
      -e S3_KEEP="30" \
      -e ARCHIVE="Off" \
      -e ARCHIVE_ADD="" \
      -e MAIL="Off" \
      -e MAIL_FROM="" \
      -e MAIL_TO="" \
      -d \
      dockerizedrupal/backer:1.1.0

## Build the image

    TMP="$(mktemp -d)" \
      && git clone https://github.com/dockerizedrupal/backer.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout 1.1.0 \
      && sudo docker build -t dockerizedrupal/backer:1.1.0 . \
      && cd -

## Changing the container behaviour on runtime through environment variables

    // TODO

## License

**MIT**
