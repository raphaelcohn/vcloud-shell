#!/usr/bin/env vsh
ORGANISATION=98-180-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
VAPP_TEMPLATE='F5 Big IP VE'
api xml vdc_vAppTemplate_enableDownload "$ORGANISATION" "$VDC" "$VAPP_TEMPLATE"

defaults_format_headings=with-heading format id-tsv task "${downloads[0]}"

format id-tsv task "${downloads[0]}"
format id-bash task "${downloads[0]}"

format links task "${downloads[0]}"
