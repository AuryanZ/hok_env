#!/bin/bash

LOG_DIR=${LOG_DIR:-"/aiarena/logs/"}
LOG_FILE=${LOG_DIR}/gamecore-server.log

SCRIPT_DIR=$(realpath $(dirname $0))
while [ "1" == "1" ]
do
    echo "[`date`] restart server"
    mkdir -p $LOG_DIR
    bash $SCRIPT_DIR/run_gamecore_server.sh > $LOG_FILE 2>&1
    sleep 1
done