#!/bin/env fish

if not (docker ps -a --format "{{.Names}}" | grep "windows")
  echo windows container not found
  exit 1
end

set -l windows_status (docker inspect --format="{{.State.Running}}" windows)

if $windows_status
  echo stopping windows
  docker stop windows > /dev/null
else
  echo starting windows on port 8006
  docker start windows > /dev/null
end