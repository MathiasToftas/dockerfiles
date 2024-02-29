#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
source "$ROOT_DIR/.env"

if [ $# -ne 1 ]; then
  echo "Usage: $0 <DIR>"
  exit 0
fi

if [ -z ${USER_NAME} ]; then
  echo "enter your docker username in .env file as 'USER_NAME'"
  exit 0
fi

DIR=$1
cd "$ROOT_DIR/$DIR"
docker build -t "$USER_NAME/$DIR" .