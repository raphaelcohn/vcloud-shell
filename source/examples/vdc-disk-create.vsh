#!/usr/bin/env vsh -v
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
DISK="independent-disk1"
SIZE_IN_MEGABYTES=1048576
api xml vdc_disk_create "$ORGANISATION" "$VDC" "$DISK" "$SIZE_IN_MEGABYTES"
