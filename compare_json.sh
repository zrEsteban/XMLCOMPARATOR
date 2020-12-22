#!/bin/bash

./convert_xml.pl $1".xml" > $1".json"
./convert_xml.pl $2".xml" > $2".json"

cond=$(jq --argfile a $1.json --argfile b $2.json -n 'def post_recurse(f): def r: (f | select(. != null) | r), .; r; def post_recurse: post_recurse(.[]?); ($a | (post_recurse | arrays) |= sort) as $a | ($b | (post_recurse | arrays) |= sort) as $b | $a == $b')

if ($cond); then
    echo 'Identico'
else
   diff <(jq -S . $1.json) <(jq -S . $2.json)
fi
