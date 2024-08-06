
#!/usr/bin/bash

File=$(find * -type f -size +40k)

for file in $File;

do

if [ -e "$file" ] ;

then

    echo "$file"

    echo "Press D To Delete OR C To Compress The File"

    read Letter

    case $Letter in

        D)

         echo "Are You Sure You want to Delete The File: (Y/N): "

          read Letter2

          case $Letter2 in

            Y)

             trash-put "$file"

  #Log File
#             logfile=/home/sarmad-randhawa/Documents/Practice/DeletedFiles.txt

              for file in ~/.local/share/Trash/info/*.trashinfo;

              do

               files=$(grep '^Path=' $file | cut -d'=' -f2-)

               deletetime=$(grep '^DeletionDate=' $file | cut -d'=' -f2-)

                if [ -n "$files" ] && [ -n "$deletetime" ];

                then

                    echo "File: $file" # >>$logfile"

                    echo "Deletion Time: $deletetime" # >>$logfile"

                 fi

               done

              ;;

            N)

            echo "File is not Deleted"

           ;;
          esac

       ;;

          C)

          echo " Are You Sure You want to Compress The File? (Y/N):"

           read Letter2

           case $Letter2 in

             Y)

               tar -cvf "$file".tar "$file" 

              ;;

              N)

               echo "The File is not Compressed"

              ;;

           esac

        ;;

     esac

fi

done
