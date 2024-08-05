
#!/usr/bin/bash

echo "This is my 3rd Assignment Part 1 Line Spacing"

FILE=/home/sarmad-randhawa/Documents/README.txt

echo "Using For Loop"

IFS=$'\n'
for File in $(awk '{print; print ""}' "$FILE" | cat -n > READMEE.txt  && cat READMEE.txt)
do
      echo "$File"
done

echo "This has the effect of double spacing the File."

