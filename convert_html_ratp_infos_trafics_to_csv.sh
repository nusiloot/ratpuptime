#!/bin/bash

cat $1 | grep "border-line" | sed 's/.*style="border-color: //' | sed 's/background-color:#[A-Z0-9]*;//' | sed 's/;" aria-label="/;/' | sed 's/">//' | sed 's/, trafic/;trafic/' | sed 's/, voir le détail des infos de la ligne//' | sed "s/^/$(basename $1 | sed 's/.html//' | sed -r 's/([0-9]{4})([0-9]{2})([0-9]{2})([0-9]{2})([0-9]{2})([0-9]{2})/\1-\2-\3 \4:\5:\6/');/" | awk -F ';' '{ print $1 ";" $3 ";" $2 ";" $4}'
