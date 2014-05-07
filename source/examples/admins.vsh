#!/usr/bin/env vsh
api xml admins

defaults_format_headings=with-heading format id-tsv admins "${downloads[1]}"
format id-tsv admins "${downloads[1]}"
format id-bash admins "${downloads[1]}"

format links admins "${downloads[1]}"
