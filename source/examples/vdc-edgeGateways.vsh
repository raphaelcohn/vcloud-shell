#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
api xml vdc_edgeGateways "$ORGANISATION" "$VDC"

#defaults_format_headings=with-heading format id-tsv vdc_edgeGateways "${downloads[0]}"
format id-tsv vdc_edgeGateways "${downloads[0]}"
format id-bash vdc_edgeGateways "${downloads[0]}"

format settings vdc_edgeGateways "${downloads[0]}"
format links vdc_edgeGateways "${downloads[0]}"
