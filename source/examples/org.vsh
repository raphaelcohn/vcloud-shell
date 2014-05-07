#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
api xml org "$ORGANISATION"

defaults_format_headings=with-heading format id-tsv org "${downloads[0]}"
format id-tsv org "${downloads[0]}"
format id-bash org "${downloads[0]}"

format links org "${downloads[0]}"
