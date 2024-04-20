#!/bin/bash

OUTPUTFILE=html/ratp_infos_trafic/$(date +%Y%m%d%H%M%S)
mkdir -p html/ratp_infos_trafic/
nodejs html_ratp_infos_trafic.js > $OUTPUTFILE.html
bash convert_html_ratp_infos_trafics_to_csv.sh $OUTPUTFILE.html > $OUTPUTFILE.csv
