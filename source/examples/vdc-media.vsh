#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
MEDIA='Ubuntu 13.04 Desktop'
api xml vdc_media "$ORGANISATION" "$VDC" "$MEDIA"

defaults_format_headings=with-heading format id-tsv vdc_media "${downloads[0]}"
format id-tsv vdc_media "${downloads[0]}"
format id-bash vdc_media "${downloads[0]}"

format links vdc_media "${downloads[0]}"
