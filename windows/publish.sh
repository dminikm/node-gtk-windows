set -eu
set -o pipefail

node --version

function publish() {
    echo "### Publish ###"
    npx node-pre-gyp package testpackage;
    npx node-pre-gyp-github publish --release;
}

echo "### Building binaries for publishing ###"
publish
