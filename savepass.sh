#!/bin/sh

SERVICE_NAME=$1
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p "$SCRIPT_DIR/pass"

GPG_RECEPIENT="sh_pass_manager (key for sh_pass_manager) <sh_pass_manager@sh_pass_manager>"

openssl rand -base64 32 | gpg --encrypt --recipient "$GPG_RECEPIENT" > "$SCRIPT_DIR/pass/$SERVICE_NAME"

