#!/bin/bash

# Check for latest release: https://github.com/github/codeql-cli-binaries/releases
_version='v2.9.3'
_arch='osx'
_zip_url="https://github.com/github/codeql-cli-binaries/releases/download/${_version}/codeql-${_arch}64.zip"
_dir='codeql-home'
_cores=2

pushd "${HOME}" || exit
# Download and extract into
curl -o "${_dir}.zip" "${_zip_url}" -L

# Unzips to codeql/
unzip "${_dir}.zip"
# Change the name
mv codeql/ "${_dir}/"

pushd "${_dir}/" || exit
# Grab the codeql repo
git clone https://github.com/github/codeql.git codeql-repo
