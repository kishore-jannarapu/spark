#!/usr/bin/env bash
#Dstream Streaming Spark Job
spark-submit --class com.datamantra.spark.jobs.RealTimeFraudDetection.DstreamFraudDetection --name "RealTime Creditcard FraudDetection Dstream" --master spark://datamantra:6066 --deploy-mode cluster  $HOME/FraudDetection/spark/fruaddetection-spark.jar $HOME/FraudDetection/spark/application-local.conf
