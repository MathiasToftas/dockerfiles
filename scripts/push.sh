#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <DIR>"
  exit 0
fi

if [ -z ${USER_NAME} ]; then
  echo "enter your docker username in .env file as 'USER_NAME'"
  exit 0
fi

DIR=$1
docker login -u "$USER_NAME"
docker push "$USER_NAME/$DIR"
