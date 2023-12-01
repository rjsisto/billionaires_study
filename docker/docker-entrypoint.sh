#!/bin/bash
set -euo pipefail

# This is the most generic entrypoint I could think of.
# See the following for examples of what can be done with entrypoints.
# https://github.com/puckel/docker-airflow/blob/master/script/entrypoint.sh
# https://github.com/foodgenius/fg-package-repository/blob/master/src/menu_voids_pipeline/docker/docker-entrypoint.sh

# set the ld paths correctly
ldconfig

case ${1:-} in
jupyter)
  $@ --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='' --NotebookApp.password=''
  ;;
*)
  exec "$@"
  ;;
esac
