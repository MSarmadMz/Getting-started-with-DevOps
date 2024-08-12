
#!/bin/bash

echo "Disk Space Managemnet in Home Directory for User2"

for file in $(find -type f -size +100k)

do

    echo $file

    echo " Do U want to delete or compress the file?? D/C"

    read Operation

    case $Operation in

     D)

       echo "are you sure to delete the file?? Y/N"

       read Answer

       case $Answer in

        Y)

          trash-put -v $file

          echo "File is deleted"

          ;;

        N)

          echo "File is not deleted"

          ;;

     esac

     ;;

     C)

       echo "are you sure to compress the file??Y/N"

       read Answer

       case $Answer in 

        Y)

         tar -zcvf $file.tar.gz $file

         echo "Zip File Created"

         ;;

        N)

         echo "File not Compressed"

        ;;

     esac

    ;;

   esac

done

