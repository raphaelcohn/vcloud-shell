#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
VAPP_TEMPLATE='raph-jonathan-1'
DOWNLOAD_PARENT_FOLDER=~/Documents/Skyscape2
api xml vdc_vAppTemplate_upload "$ORGANISATION" "$VDC" "$VAPP_TEMPLATE" "$DOWNLOAD_PARENT_FOLDER"
