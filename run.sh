#!/bin/sh
set -e

CONFIG_PATH=/data/options.json

exec node server.js $CONFIG_PATH
