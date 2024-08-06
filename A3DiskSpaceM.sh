#!/bin/bash

files=$(find ~/ -type f -size +100k)

for file in $files;

do

  if [ -e "$file" ]; then

    echo "File Path is : $file"

    echo "Press D to Delete The File OR C To Compress The File"

      read Letter

      case $Letter in

          D)

          echo "Are You Sure You want to Delete The File?Y/N"

          read Letter2

           case $Letter2 in

                Y)

                rm -r 

                 ;;

                N)

                echo "Your File is not Deleted"

                 ;;
                esac
          ;;

           C)

            echo "Are You Sure You want TO Compress The File? (Y/N)"

            read Letter2

            case $Letter2 in

              Y)

               echo "The File Will Be Compressed"

               ;;

               N)

               echo "The File Will not be Compressed"

                ;;

           esac

         ;;

       esac

 fi

done
