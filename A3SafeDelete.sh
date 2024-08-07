#!/usr/bin/bash

echo "A Safe Delete Command"

echo "Enter Filename: "

 read filename

 case $filename in

   *)

    file $filename

    # stat -c %F $filename

      tar -zcvf "$filename".tar.gz  "$filename"

      echo "Zip Created"

      echo "Do U want to move the newly created zip to Trash?? Y/N"

        read Letter

         case $Letter in

           Y)

             trash-put "$filename".tar.gz

             ;;

            N)

             echo "NOTHING MOVED TO TRASH"

              ;;

           esac

       ;;

    esac

echo "Checking the Trash Directory for Files Older than 48 Hours "

currenttime=$(date +%s)

seconds=$((1 * 3600))

 for file in ~/.local/share/Trash/info/*.trashinfo;

 do
           mdtime=$(stat -c %Y "$file")

           age=$((currenttime - mdtime))

           if [ $age -gt $seconds ];

           then

               filess=$(grep "^Path=" $file)

              deltime=$(grep "^DeletionDate=" $file)

              echo "##" $filess

              echo "##" $deltime

              echo " Do You want to Permanently delete the file from trash?"

              read Letter

              case $Letter in

                  Y)

                  rm -v  $file

              ;;
                 N)

                echo "No File removed from Trash"

                  ;;

               esac
            fi
 done
