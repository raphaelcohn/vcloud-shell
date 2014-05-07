#!/usr/bin/env vsh
api xml orgs

defaults_format_headings=with-heading format id-tsv orgs "${downloads[1]}"
format id-tsv orgs "${downloads[1]}"
format id-bash orgs "${downloads[1]}"

format links orgs "${downloads[1]}"
