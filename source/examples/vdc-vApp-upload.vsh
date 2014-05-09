#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
VAPP='raph-jonathan-1'
UPLOAD_PARENT_FOLDER=~/Documents/Skyscape2
api xml vdc_vAppTemplate_upload "$ORGANISATION" "$VDC" "$VAPP" "$UPLOAD_PARENT_FOLDER"
