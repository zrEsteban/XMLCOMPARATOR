#!/bin/bash

OUT1=$(./read_xml.pl $1 0)
OUT2=$(./read_xml.pl $2 0)

diff <(echo $OUT1) <(echo $OUT2)
