#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
MEDIA='Ubuntu 13.00 Desktop'
api xml vdc_media_metadata "$ORGANISATION" "$VDC" "$MEDIA"

defaults_format_headings=with-heading format id-tsv metadata "${downloads[0]}"
format id-tsv metadata "${downloads[0]}"
format id-bash metadata "${downloads[0]}"

format links metadata "${downloads[0]}"

format settings metadata "${downloads[0]}"
