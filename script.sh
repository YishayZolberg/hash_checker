#!/bin/bash
exist=0
not_exist=0
for file in *.exe
do
	temp=$(echo $file | cut -d"." -f 1)
	if [ -f "$temp.sha256" ]
	then
		echo $(date +%d/%m/%y" "%T) $file already hashed $(sha256sum --check "$temp.sha256") >> hashing_checker.log
		((exist=exist+1))
	else
		sha256sum "$file" > "$temp.sha256"
		echo $(date +%d/%m/%y" "%T) $file hashed successfully $(sha256sum "$temp.sha256") >> hashing_checker.log
		((not_exist=not_exist+1))
	fi
done
let sum=$exist+$not_exist
echo "the proccess is done"
echo "$exist files already exist"
echo "$not_exist files not exist"
echo $sum files scanned