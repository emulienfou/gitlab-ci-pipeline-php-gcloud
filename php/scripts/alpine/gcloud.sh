#!/usr/bin/env bash

set -euf -o pipefail

apk update \
&& apk --no-cache add \
    bash \
    py-crcmod \
    libc6-compat \
    gnupg

# Install Google Cloud SDK
curl -sSL https://sdk.cloud.google.com | bash

source /home/php/google-cloud-sdk/completion.bash.inc
source /home/php/google-cloud-sdk/path.bash.inc
