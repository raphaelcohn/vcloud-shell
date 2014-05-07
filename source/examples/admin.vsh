#!/usr/bin/env vsh
api xml admin 98-184-1-151d73

defaults_format_headings=with-heading format id-tsv admin "${downloads[1]}"
format id-tsv admin "${downloads[1]}"
format id-bash admin "${downloads[1]}"

format links admin "${downloads[1]}"

defaults_format_headings=with-heading format settings-tsv admin "${downloads[1]}"
format settings-tsv admin "${downloads[1]}"
format settings-bash admin "${downloads[1]}"

format links-users admin "${downloads[1]}"
format links-groups admin "${downloads[1]}"
format links-catalogs admin "${downloads[1]}"
format links-vdcs admin "${downloads[1]}"
format links-networks admin "${downloads[1]}"
