# CRISP4BigData-MW #

Docker image for the Mediator/Wrapper prototype implementation within CRISP4BigData with the following components:

- Confluent Open Source Edition with Apache Kafka and ZooKeeper
- REST Proxy
- Schema Registry
- Kafka Connect with several connectors for data sources and sinks
- FTP source connector, adapted for sample data from the Metaplat project
- [Landoop](http://www.landoop.com/kafka/kafka-tools/) tools
- Front page, adapted for CRISP4BigData

## Usage

The image is available from Docker Hub. You need a Docker installation to run it. In order to pull the image from Docker Hub and execute it _on Linux_, run the following command.

    docker run -d --net=host -e ADV_HOST=<IP> --name mw tucuxi/crisp4bigdata-mw

If you use Windows or macOS, you must create a virtual machine before you can run the image.

## Build

This repository contains the source code for the image. You need a Docker installation to build it. Clone this repository using git and run the following command in the top-level directory of the repository in order to build the image.

    docker build -t tucuxi/crisp4bigdata-mw .

## Documentation

Please refer to the Master's thesis for full documentation.
