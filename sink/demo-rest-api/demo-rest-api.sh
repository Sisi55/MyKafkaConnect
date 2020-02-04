
docker run --rm -it --net=host landoop/fast-data-dev:cp3.3.0 bash

apk update && apk add jq

curl -s 127.0.0.1:8083 | jq

curl -s 127.0.0.1:8083/connector-plugins |jq
...