#!/usr/bin/env vsh
api xml supportedSystemsInfo

defaults_format_headings=with-heading format id-tsv supportedSystemsInfo "${downloads[0]}"
format id-tsv supportedSystemsInfo "${downloads[0]}"
format id-bash supportedSystemsInfo "${downloads[0]}"

defaults_format_headings=with-heading format settings supportedSystemsInfo "${downloads[0]}"
format settings supportedSystemsInfo "${downloads[0]}"
