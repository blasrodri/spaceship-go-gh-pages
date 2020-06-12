#! /bin/bash
set -e

cd spaceship-go
git checkout master
git pull origin master
mdbook build
cd ..
rm -rf FontAwesome
rm -rf css
mv spaceship-go/book/* .
rm -rf spaceship-go/book

