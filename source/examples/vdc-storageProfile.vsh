#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
STORAGEPROFILE='98-184-1-BASIC-Any'
api xml vdc_storageProfile "$ORGANISATION" "$VDC" "$STORAGEPROFILE"

defaults_format_headings=with-heading format id-tsv vdc_storageProfile "${downloads[0]}"
format id-tsv vdc_storageProfile "${downloads[0]}"
format id-bash vdc_storageProfile "${downloads[0]}"

format links vdc_storageProfile "${downloads[0]}"
