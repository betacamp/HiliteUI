#!/bin/bash

if [ $# -gt 1 ]; then
  echo "must provide a release version!"
  exit 1
fi

echo $1

#curl --data '{"tag_name": $0,"target_commitish": "master","name": "v1.0.0","body": "Release of version 1.0.0","draft": false,"prerelease": false}' https://api.github.com/repos/:owner/:repository/releases?access_token=:your_access_token
