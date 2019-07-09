#!/bin/sh

set -e
set -o pipefail

PASS_FILE=$1

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

gpg --decrypt $PASS_FILE | pbcopy
echo "Password copied to clipboard"

