#!/bin/sh
set -e

CONFIG_PATH=/data/options.json

node server.js $CONFIG_PATH
