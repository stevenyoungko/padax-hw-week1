#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

# 构建
npm run build

# cd 到构建输出的目录下 
cd dist

# 部署到自定义域域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 部署到 https://stevenyoungko.github.io
# git push -f git@github.com:stevenyoungko/stevenyoungko.github.io.git master

# 部署到 https://stevenyoungko.github.io/padax-hw-week1
git push -f https://github.com/stevenyoungko/padax-hw-week1.git master:gh-pages

cd -