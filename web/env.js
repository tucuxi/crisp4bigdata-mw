var runningServices = [
  {
    "name" : "Confluent OSS v3.3.1 - Kafka v0.11.0.1",
    "description" : "1× Broker, 1× Schema Registry, 1× Connect Distributed Worker, 1× REST Proxy, 1× Zookeeper"
  },
  {
    "name" : "Landoop Schema Registry UI v0.9.1",
    "description" : "Create, view, search, edit, validate, evolve & configure Avro schemas"
  },
  {
    "name" : "Landoop Kafka Topics UI v0.9.3",
    "description" : "Browse and search topics, inspect data, metadata and configuration"
  },
  {
    "name" : "Landoop Kafka Connect UI v0.9.3",
    "description" : "View, create, update and manage connectors"
  }
];

var disabled = [
];

var servicesInfo = [
  {
    "name" : "Kafka Broker",
    "port" : "9092",
    "jmx"  : "9581",
    "url"  : "localhost"
  },
  {
    "name" : "Kafka Broker SSL",
    "port" : "9093",
    "jmx"  : "9581",
    "url"  : "localhost"
  },
  {
    "name" : "Schema Registry",
    "port" : "8081",
    "jmx"  : "9582",
    "url"  : "http://localhost"
  },
  {
    "name" : "Kafka REST Proxy",
    "port" : "8082",
    "jmx"  : "9583",
    "url"  : "http://localhost"
  },
  {
    "name" : "Kafka Connect Distributed",
    "port" : "8083",
    "jmx"  : "9584",
    "url"  : "http://localhost"
  },
  {
    "name" : "ZooKeeper",
    "port" : "2181",
    "jmx"  : "9585",
    "url"  : "localhost"
  },
  {
    "name" : "Web Server",
    "port" : "3030",
    "jmx"  : "",
    "url"  : "http://localhost"
  }
];

var exposedDirectories = [
  {
    "name" : "Log files",
    "url" : "/logs/",
    "enabled" : "1"
  },
];
