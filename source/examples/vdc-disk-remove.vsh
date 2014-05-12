#!/usr/bin/env vsh -v
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
DISK="independent-disk1"
api xml vdc_disk_remove "$ORGANISATION" "$VDC" "$DISK"
