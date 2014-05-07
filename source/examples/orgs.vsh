#!/usr/bin/env vsh
api xml orgs

defaults_format_headings=with-heading format id-tsv orgs "${downloads[0]}"
format id-tsv orgs "${downloads[0]}"
format id-bash orgs "${downloads[0]}"

format links orgs "${downloads[0]}"
