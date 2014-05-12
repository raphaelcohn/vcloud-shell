#!/usr/bin/env vsh

echo "Versions retrieved at login"
cat "$downloadVersions"
echo
echo

sleep 1
echo "Versions as TSV"
defaults_format_separator=$'\t' format settings version "$downloadVersions"
echo
echo

sleep 1
echo "Sessions retrieved at login"
cat "$downloadSessions"
echo
echo

sleep 1
echo "List of Organisations"
api xml orgs
echo
echo

sleep 1
echo "Cached content"
cat "$(cached orgs)"
echo
echo

sleep 1
echo "Looping"
# write a generic loop that gives up href, mimeType, name, rel, even if empty [pass a sort of 'end of line output string' to xml-starlet in order to normalise]
# problem is bash collapses empty columns - does xml sel support a 'missing value' feature?
# filter on mime type, etc - very much like api_callback_* functions
defaults_format_separator=$'\x01' format links orgs "$(cached orgs)" | while IFS=$'\x01' read -r href mimeType name
do
	ORGANISATION="$name"
	api links org "$ORGANISATION"
done
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
format links-vdcs admin "$download"
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
