#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:skepfusky/wild-times-vue.git main:gh-pages

echo "I'm gettin fat and I don't know why"

cd -

clear