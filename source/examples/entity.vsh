#!/usr/bin/env vsh
ENTITY='urn:vcloud:org:3a2900f9-f15c-49d6-8771-bdd8bbebe456'
api xml entity "$ENTITY"

defaults_format_headings=with-heading format id-tsv entity "${downloads[2]}"
format id-tsv entity "${downloads[2]}"
format id-bash entity "${downloads[2]}"

format links entity "${downloads[2]}"
