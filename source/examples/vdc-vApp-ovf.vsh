#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
VAPP='man_dc'
api xml vdc_vApp_ovf  "$ORGANISATION" "$VDC" "$VAPP"
