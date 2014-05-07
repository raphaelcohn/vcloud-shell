#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
api xml admin "$ORGANISATION"

defaults_format_headings=with-heading format id-tsv admin "${downloads[0]}"
format id-tsv admin "${downloads[0]}"
format id-bash admin "${downloads[0]}"

format links admin "${downloads[0]}"

defaults_format_headings=with-heading format settings-tsv admin "${downloads[0]}"
format settings-tsv admin "${downloads[0]}"
format settings-bash admin "${downloads[0]}"

format links-users admin "${downloads[0]}"
format links-groups admin "${downloads[0]}"
format links-catalogs admin "${downloads[0]}"
format links-vdcs admin "${downloads[0]}"
format links-networks admin "${downloads[0]}"
