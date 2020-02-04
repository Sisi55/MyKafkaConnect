## FileStreamSourceConnector in standalone mode
docker run --rm it -v %cd%:/tutorial --net=host landoop/fast-data-dev:cp3.3.0 bash

# launch kafka connector in standalone mode
cd /tutorial/source/demo-1

kafka-topics --create --topic demo-1-standalone --partitions 3 --replication-factor 1 --zookeeper 127.0.0.1:2181

connect-standalone worker.properties file-stream-demo-standalone.properties


## FileStreamSourceConnector int distributed mode
docker run --rm -it --net=host landoop/fast-data-dev:cp3.3.0 bash

kafka-topics --create --topic demo-2-distributed --partitions 3 --replication-factor 1 --zookeeper 127.0.0.1:2181

