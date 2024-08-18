#!/bin/bash

file="input.txt"
grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}|([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}' "$file" | while read -r line;
 do
echo "scanning+----++___+++__++__++---+${line}"
    output_file="${line}.txt"
    nmap "$line" > "$output_file"
done


