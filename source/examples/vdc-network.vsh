#!/usr/bin/env vsh
ORGANISATION=98-180-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
NETWORK='Management'
api xml vdc_network "$ORGANISATION" "$VDC" "$NETWORK"

defaults_format_headings=with-heading format id-tsv vdc_network "${downloads[0]}"
format id-tsv vdc_network "${downloads[0]}"
format id-bash vdc_network "${downloads[0]}"

format links vdc_network "${downloads[0]}"

format settings vdc_network "${downloads[0]}"
