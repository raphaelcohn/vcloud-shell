#!/usr/bin/env vsh
api xml admins

defaults_format_headings=with-heading format id-tsv admins "${downloads[0]}"
format id-tsv admins "${downloads[0]}"
format id-bash admins "${downloads[0]}"

format links admins "${downloads[0]}"
