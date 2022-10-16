#!/bin/bash
# usage: make_brute_list.sh <input> <output>

cat $1 | python3.8 generator.py | sed -E 's/\.{2,}/./g' | sort -fu | grep -vE '(\._|_\.|\-\.|\.\-|_\-|\-_)' > $2
