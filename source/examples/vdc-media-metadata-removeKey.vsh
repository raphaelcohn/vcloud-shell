#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
MEDIA='Ubuntu 13.04 Desktop'
api xml vdc_media_metadata_removeKey "$ORGANISATION" "$VDC" "$MEDIA"