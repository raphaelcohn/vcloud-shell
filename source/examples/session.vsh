#!/usr/bin/env vsh
api xml session

defaults_format_headings=with-heading format id-tsv session "${downloads[1]}"
format id-tsv session "${downloads[1]}"
format id-bash session "${downloads[1]}"

format links session "${downloads[1]}"
