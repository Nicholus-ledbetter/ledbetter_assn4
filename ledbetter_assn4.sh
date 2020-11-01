#! /bin/bash

grep Person possible_voters.txt | column -t >head.txt
echo Eligible?>paste.txt
paste head.txt paste.txt >>final.txt
grep -v Person possible_voters.txt>>data.txt
cut -f2 data.txt>ages.txt

while read line
do if [ "$line" -lt 18 ]
then echo $line "no">>test.txt
else echo $line "yes">>test.txt
fi 
done<ages.txt

cut -f1 data.txt>person.txt
paste person.txt test.txt | column -t>done.txt

column -t done.txt>>final.txt



column -t final.txt | head -10 
echo -e "$(sort -k3 final.txt | grep yes | wc -l) voters are eligible"
rm ages.txt data.txt done.txt head.txt paste.txt person.txt test.txt


