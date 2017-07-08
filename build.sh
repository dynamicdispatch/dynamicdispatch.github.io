#!/bin/bash

set -e 

bundle exec jekyll build

pushd "_site"

rm "README.md"
rm "Dangerfile"
rm "new_post.sh"

popd

# Copy everything into blog folder that lives alongside parent folder.
test -d ../dynamicdispatch.github.io

cp -R _site/* ../dynamicdispatch.github.io
