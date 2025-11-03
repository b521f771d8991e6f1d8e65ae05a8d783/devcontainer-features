#!/bin/sh
set -e

echo "Activating feature 'wasm-bindgen-cli'"
echo "Version: ${VERSION}"


# The 'install.sh' entrypoint script is always executed as the root user.
#
# These following environment variables are passed in by the dev container CLI.
# These may be useful in instances where the context of the final 
# remoteUser or containerUser is useful.
# For more details, see https://containers.dev/implementors/features#user-env-var

cargo install wasm-bindgen-cli@${VERSION}