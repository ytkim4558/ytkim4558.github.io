#!/bin/sh

setup_git() {
  git config --global user.email "ytkim4558@naver.com"
  git config --global user.name "ytkim4558"
}

commit_output_files() {
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git push https://${GITHUB_TOKEN}@github.com/ytkim4558/ytkim4558@github.io.git master
}

setup_git
commit_output_files
upload_files