#!/usr/bin/env bash
#Dstream Streaming Spark Job
spark-submit --class com.datamantra.spark.jobs.RealTimeFraudDetection.DstreamFraudDetection --name "RealTime Creditcard FraudDetection Dstream" --master spark://datamantra:6066 --deploy-mode cluster  /creditcard-fraud-detection/FraudDetection/build-files/spark/fruaddetection-spark.jar /creditcard-fraud-detection/FraudDetection/build-files/spark/application-local.conf
