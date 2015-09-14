# backer

## Run the container

Using the `docker` command:

    CONTAINER="backer-data" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      -v /backer \
      dockerizedrupal/data:1.0.3

    CONTAINER="backer" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      --volumes-from backer-data \
      -e MYSQL_HOST="localhost" \
      -e MYSQL_PORT="3306" \
      -e MYSQL_USERNAME="root" \
      -e MYSQL_PASSWORD="root" \
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
      -e HIPCHAT="Off" \
      -e HIPCHAT_TOKEN="" \
      -e HIPCHAT_FROM="" \
      -e HIPCHAT_ROOMS_NOTIFIED="" \
      -d \
      dockerizedrupal/backer:1.0.1

Using the `docker-compose` command

    TMP="$(mktemp -d)" \
      && git clone https://github.com/dockerizedrupal/backer.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout 1.0.1 \
      && sudo docker-compose up

## Build the image

    TMP="$(mktemp -d)" \
      && git clone https://github.com/dockerizedrupal/backer.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout 1.0.1 \
      && sudo docker build -t dockerizedrupal/backer:1.0.1 . \
      && cd -

## License

**MIT**
