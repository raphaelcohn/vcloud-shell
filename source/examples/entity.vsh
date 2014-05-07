#!/usr/bin/env vsh
ENTITY='urn:vcloud:org:3a0900f9-f15c-49d6-8771-bdd8bbebe456'
api xml entity "$ENTITY"

defaults_format_headings=with-heading format id-tsv entity "${downloads[0]}"
format id-tsv entity "${downloads[0]}"
format id-bash entity "${downloads[0]}"

format links entity "${downloads[0]}"
