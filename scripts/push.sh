#!/usr/bin/env bash

set -eu

DOCKERHUB_REPO="cutelang/doxygen"

docker push "${DOCKERHUB_REPO}"

set +eu
