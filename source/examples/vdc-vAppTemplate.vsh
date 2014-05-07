#!/usr/bin/env vsh
ORGANISATION=98-180-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
VAPP_TEMPLATE='F5 Big IP VE'
api xml vdc_vAppTemplate  "$ORGANISATION" "$VDC" "$VAPP_TEMPLATE"

format links vdc_vAppTemplate "${downloads[0]}"
