#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
EDGEGATEWAY='nft0009di2-1'
api xml vdc_edgeGateway "$ORGANISATION" "$VDC" "$EDGEGATEWAY"

defaults_format_headings=with-heading format id-tsv vdc_edgeGateway "${downloads[0]}"
format id-tsv vdc_edgeGateway "${downloads[0]}"
format id-bash vdc_edgeGateway "${downloads[0]}"
format links vdc_edgeGateway "${downloads[0]}"
format links-interfaces vdc_edgeGateway "${downloads[0]}"
format links-natservice vdc_edgeGateway "${downloads[0]}"
format settings-pools vdc_edgeGateway "${downloads[0]}"
format settings-firewallrules vdc_edgeGateway "${downloads[0]}"
format settings-gateways vdc_edgeGateway "${downloads[0]}"
