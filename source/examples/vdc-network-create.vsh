#!/usr/bin/env vsh
ORGANISATION=98-184-1-151d73
VDC='Student Loans Company - Platform Engineering (IL0-TRIAL-BASIC)'
NETWORKNAME="isolated_network5"
GATEWAY="10.28.1.1"
NETMASK="255.255.255.128"
DNS1="$10.28.1.50"
STARTADDRESS="10.28.1.2"
ENDADDRESS="10.28.1.59"
FENCEMODE="isolated"
api xml vdc_network_create "$ORGANISATION" "$VDC" "$NETWORKNAME" "$GATEWAY" "$NETMASK" "$DNS1" "$STARTADDRESS" "$ENDADDRESS" "$FENCEMODE"
