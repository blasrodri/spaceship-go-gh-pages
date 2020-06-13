#! /bin/sh
set -e

cd spaceship-go
git checkout master
git pull origin master
mdbook build
cd ..
rm -rf -v !("spaceship-go"|"build-book.sh")
mv spaceship-go/book/* .
rm -rf spaceship-go/book

