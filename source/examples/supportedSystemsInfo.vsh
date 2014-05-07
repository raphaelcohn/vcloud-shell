#!/usr/bin/env vsh
api xml supportedSystemsInfo

defaults_format_headings=with-heading format id-tsv supportedSystemsInfo "${downloads[1]}"
format id-tsv supportedSystemsInfo "${downloads[1]}"
format id-bash supportedSystemsInfo "${downloads[1]}"

defaults_format_headings=with-heading format settings supportedSystemsInfo "${downloads[1]}"
format settings supportedSystemsInfo "${downloads[1]}"
