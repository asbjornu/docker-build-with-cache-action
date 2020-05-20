#!/bin/bash

sha8=$(echo ${GIT_SHA} | cut -c1-8)
github_repo_name="${GITHUB_REPO#"$GITHUB_OWNER"/}"
image_name="${GITHUB_REPO}/${github_repo_name}"

echo "Repo name: ${github_repo_name}"
echo "Image name: ${image_name}"
echo "SHA8: ${sha8}"

echo "::set-output name=sha8::${sha8}"
echo "::set-output name=image_name::${image_name}"
