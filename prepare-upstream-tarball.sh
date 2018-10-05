#!/bin/bash

REPONAME="ploop"
VERSION="7.0.131"

TAG="v${VERSION}"
URL="https://src.openvz.org/scm/ovz/${REPONAME}.git"

git clone --quiet --depth 1 --branch ${TAG} ${URL} ${REPONAME}-${VERSION} &>/dev/null \
  && tar -cf ${REPONAME}_${VERSION}.orig.tar ${REPONAME}-${VERSION} \
  && rm -rf ${REPONAME}-${VERSION}
