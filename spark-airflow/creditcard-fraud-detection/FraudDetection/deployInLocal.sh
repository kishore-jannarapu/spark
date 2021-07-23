#!/usr/bin/env bash

rm -rf build-files && \
rm -rf /creditcard-fraud-detection/FraudDetection
mvn clean package -DskipTests=true && \
echo "Completed packaging, deploying to Local" && \
mkdir -p /creditcard-fraud-detection/FraudDetection && \
cp -r build-files/* /creditcard-fraud-detection/FraudDetection && \
echo "Deployed in Local"

exit 0
