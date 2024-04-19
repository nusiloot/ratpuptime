#!/bin/bash

mkdir -p html/ratp_infos_trafic/
nodejs html_ratp_infos_trafic.js > html/ratp_infos_trafic/$(date +%Y%m%d%H%M%S).html
