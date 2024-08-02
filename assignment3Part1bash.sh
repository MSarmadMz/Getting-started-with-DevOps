
#!/usr/bin/bash

echo "This is my 3rd Assignment"

FILE=/home/sarmad-randhawa/Documents/README.txt
printf "\nUsing while Loop"

while read File
do
    echo " $File"
done <  "$FILE"

echo "Using For Loop"

IFS=$'\n'
for File in $(cat -sn "$FILE")
do
      echo "$File"
done
echo "This has the effect of double spacing the File."

