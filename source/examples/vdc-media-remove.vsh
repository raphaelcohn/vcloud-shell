#!/usr/bin/env vsh -v
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
MEDIA='vdc-media-upload.iso'
api xml vdc_media_remove "$ORGANISATION" "$VDC" "$MEDIA"
