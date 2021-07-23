#!/usr/bin/env bash
# Import intial data to Cassandra..
spark-submit  --class com.datamantra.spark.jobs.IntialImportToCassandra --name "Import Data to Cassandra" --master spark://spark-master:7077 /creditcard-fraud-detection/FraudDetection/build-files/spark/fruaddetection-spark.jar /creditcard-fraud-detection/FraudDetection/build-files/spark/application-local.conf

