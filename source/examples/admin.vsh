#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
api xml admin "$ORGANISATION"

defaults_format_headings=with-heading format id-tsv admin "${downloads[2]}"
format id-tsv admin "${downloads[2]}"
format id-bash admin "${downloads[2]}"

format links admin "${downloads[2]}"

defaults_format_headings=with-heading format settings-tsv admin "${downloads[2]}"
format settings-tsv admin "${downloads[2]}"
format settings-bash admin "${downloads[2]}"

format links-users admin "${downloads[2]}"
format links-groups admin "${downloads[2]}"
format links-catalogs admin "${downloads[2]}"
format links-vdcs admin "${downloads[2]}"
format links-networks admin "${downloads[2]}"
