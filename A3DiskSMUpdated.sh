
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

             rm -v "$file"

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
