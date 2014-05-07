#!/usr/bin/env vsh

echo "List of Organisations"
api links orgs
echo
echo

sleep 1
echo "Our Organisation"
ORGANISATION=98-184-1-151d73
api links org "$ORGANISATION"
echo
echo

sleep 1
echo "Our Organisation in DETAIL"
api xml admin "$ORGANISATION"
echo
echo

sleep 1
echo "Usefully, as links - note we capture the output for reuse"
format links-vdcs admin "${downloads[16]}"
echo
echo

sleep 1
echo "Our VDC's vAppTemplates"
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
VAPP_TEMPLATE='F5 Big IP VE'
api xml vdc_vAppTemplate "$ORGANISATION" "$VDC" "$VAPP_TEMPLATE"
echo
echo

sleep 1
echo "Download our vAppTemplate"
DOWNLOAD_PARENT_FOLDER=~/Documents/Skyscape2
api none vdc_vAppTemplate_download "$ORGANISATION" "$VDC" "$VAPP_TEMPLATE" "$DOWNLOAD_PARENT_FOLDER"
