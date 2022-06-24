#!/bin/sh

TAG=`date +"v0.%Y.%U"`
git tag | grep $TAG
if [ $? -ne 0 ]; then
  git tag $TAG
fi
git push origin --tags
