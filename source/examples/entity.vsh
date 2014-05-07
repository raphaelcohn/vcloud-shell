#!/usr/bin/env vsh
api xml entity 'urn:vcloud:org:3a2900f9-f15c-49d6-8771-bdd8bbebe456'
echo Hello
format id-tsv with-heading entity "${downloads[1]}"
echo Hello2
api id-tsv entity 'urn:vcloud:org:3a2900f9-f15c-49d6-8771-bdd8bbebe456'
api links entity 'urn:vcloud:org:3a2900f9-f15c-49d6-8771-bdd8bbebe456'
