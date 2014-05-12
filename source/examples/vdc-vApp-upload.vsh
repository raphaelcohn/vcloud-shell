#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
VAPP='raph-jonathan-2'
UPLOAD_PARENT_FOLDER=~/Documents/Skyscape2
api xml vdc_vApp_upload "$ORGANISATION" "$VDC" "$VAPP" "$UPLOAD_PARENT_FOLDER"
