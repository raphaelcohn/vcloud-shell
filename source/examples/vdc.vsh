#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
api xml vdc "$ORGANISATION" "$VDC"

defaults_format_headings=with-heading format id-tsv vdc "${downloads[3]}"
format id-tsv vdc "${downloads[3]}"
format id-bash vdc "${downloads[3]}"

format links vdc "${downloads[3]}"

format links-resource-entities vdc "${downloads[3]}"
format links-networks vdc "${downloads[3]}"
format links-storage-profiles vdc "${downloads[3]}"
format capabilities vdc "${downloads[3]}"
