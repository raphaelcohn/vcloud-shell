#!/usr/bin/env vsh
api xml session

defaults_format_headings=with-heading format id-tsv session "${downloads[0]}"
format id-tsv session "${downloads[0]}"
format id-bash session "${downloads[0]}"

format links session "${downloads[0]}"
