# CRISP4BigData-MW #

Docker image for the Mediator/Wrapper prototype implementation within CRISP4BigData with the following components:

- [Confluent Open Source](https://de.confluent.io/product/confluent-open-source/) with Apache Kafka and ZooKeeper
- REST Proxy
- Schema Registry
- Kafka Connect with several connectors for data sources and sinks
- FTP source connector, adapted for sample data from the Metaplat project
- [Landoop Kafka Tools](http://www.landoop.com/kafka/kafka-tools/)
- Front page, adapted for CRISP4BigData

## Usage

The image is available from [Docker Hub](https://hub.docker.com/r/tucuxi/crisp4bigdata-mw/). To run it, you need to have Docker installed.

In order to pull the image from Docker Hub and execute it _on Linux_, run the following command. If you use Windows or macOS, you must create a virtual machine before running the image.

    docker run -d --net=host -e ADV_HOST=<IP> --name mw tucuxi/crisp4bigdata-mw

## Build

This repository contains the source code for the image. You need a Docker installation to build it. Clone this repository using git and run the following command in the top-level directory of the repository in order to build the image.

    docker build -t tucuxi/crisp4bigdata-mw .

## Documentation

Please refer to the Master's thesis for full documentation.
