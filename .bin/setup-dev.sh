#!/usr/bin/env bash

BINDIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

. "${BINDIR}/.lib.setup.sh"

declare -A VENDORS=()

read_vendor_conf VENDORS "${UTILDIR}/.setup-dev.conf"
install_vendors VENDORS "${VENDORDIR}"

"${BINDIR}/setup-prod.sh"
