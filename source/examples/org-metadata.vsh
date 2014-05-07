#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
api xml org_metadata "$ORGANISATION"

defaults_format_headings=with-heading format id-tsv metadata "${downloads[0]}"
format id-tsv metadata "${downloads[0]}"
format id-bash metadata "${downloads[0]}"

format links metadata "${downloads[0]}"

format settings metadata "${downloads[0]}"
