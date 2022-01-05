#!/usr/bin/env sh
# abort on errors
set -e
# build
npm run build
# navigate into the build output directory
cd www
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git branch -M main
git add -A
git commit -m 'deploy'
git push -f git@github.com:Anggairham/framework7-vue.git main:gh-pages
cd -