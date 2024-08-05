
#!/usr/bin/sh

echo "This is my Second Assignment"
echo "Getting the Assignmenmt 1 Requirements with Help Of Functions"

diskspacefunction()
{
  echo "This is a  Disk Space Function"
  free -h
}

memoryconsumptionfunction()
{
  echo "This is a Memory Consumption Function"
  #top -o %MEM | head -n17
  top -o %MEM -bn 1 | awk ' { printf ("%-1s %-2s %-8s\n",$1, $2, $10); }'| head -n17

}

cpuconsumptionfunction()
{
  echo "This is a CPU Consumption Function"
  #top -o %CPU | head -n17
  top -o %CPU -bn 1 | awk ' { printf ("%-8s %-8s\n",$1, $9); }'| head -n10

}

allfunctions()
{
  echo "This is a Function featuring All Three above Functions"
  free -h
  top -o %MEM | head -n17
  top -o %CPU | head -n17
}

#diskspacefunction
#memoryconsumptionfunction
#cpuconsumptionfunction

echo "Enter A For All Functions"
echo "Enter C For CPU Function"
echo "Enter D For Disk Space Function"
echo "Enter M For Memory Space Function"


read functionname

case $functionname in
          D)

         echo "The Disk Space Function is Called"
         diskspacefunction
         ;;
          M)

         echo "The Memory Consumption Function is Called"
         memoryconsumptionfunction
         ;;
          C)

         echo "The CPU Consumption Function is Called"
         cpuconsumptionfunction
      ;;
          A)

         echo "The All Features Function is Called"
         allfunctions
 ;;

esac
