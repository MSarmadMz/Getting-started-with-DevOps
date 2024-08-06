
#!/bin/bash

logfile=~/DeletedFiles.txt

>"$logfile"

for file in ~/.local/share/Trash/info/*.trashinfo;

do

    files=$(grep '^Path=' "$file"  | cut -d'=' -f2-)

    deletetime=$(grep '^DeletionDate=' "$file" | cut -d'=' -f2-)

    if [ -n "$files" ] && [ -n "$deletetime" ];

    then

        echo "File: $files"  >> "$logfile"

        echo "Deletion Time: $deletetime" >>"$logfile"

    fi
done
