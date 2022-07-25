#!/bin/bash

_version='v2.9.3'
_arch='osx'
_zip_url="https://github.com/github/codeql-cli-binaries/releases/download/${_version}/codeql-${_arch}64.zip"
_dir='codeql-main'

pushd "${HOME}" || exit
curl -o "${_dir}.zip" "${_zip_url}" -L

unzip "${_dir}.zip"
mv codeql/ "${_dir}/"

pushd "${_dir}/" || exit
git clone https://github.com/github/codeql.git codeql-public-repo
