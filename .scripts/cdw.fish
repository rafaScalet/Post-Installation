#!/usr/bin/env fish

set -l ARGUMENT $argv[1]

if test -z $ARGUMENT
  echo "Usage: cdw <WORKSPACE>"
  exit 1
end

set -l WORKSPACE (find ~/projects/codespace -not -path "*/.*" -iname "*$ARGUMENT*.code-workspace")

if test (count $WORKSPACE) -eq 1
  code $WORKSPACE
  exit 0
end

echo "Project: $ARGUMENT not found."
exit 1