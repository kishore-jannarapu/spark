#!/bin/bash

set -e

TAG=3.1.1-hadoop3.2

build() {
    NAME=$1
    IMAGE=$NAME:$TAG
    cd $([ -z "$2" ] && echo "./$NAME" || echo "$2")
    echo '--------------------------' building $IMAGE in $(pwd)
    docker build -t $IMAGE .
    cd -
}

build base
build spark-master
build spark-worker