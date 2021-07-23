#!/usr/bin/env bash
#Training Spark Job
spark-submit --class com.datamantra.spark.jobs.FraudDetectionTraining --name "Fraud Detection Spark ML Training" --master spark://datamantra:7077 $HOME/FraudDetection/spark/fruaddetection-spark.jar  $HOME/FraudDetection/spark/application-local.conf
