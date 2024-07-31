
#!/usr/bin/bash/

echo "This was my first assignment"
echo "Press 1:For Disk Space"
echo "Press 2:For Top 10 Processes Having High Memory Consumption"
echo "Press 3:For Top 10 Processes Having High CPU Consumption"
echo "Press 4:For All 3 Above Functions"
read x
case $x in
   1)
   echo "Following is the Information regarding Disk Space"
    free -h
      ;;
   2)
   echo "Following is the information regarding Memory Consumption"
    top -o %MEM | head -n17
      ;;
   3)
   echo "Following is the information regarding CPU Consumption"
    top -o %CPU | head -n17
     ;;
   4)
   echo "Yes All 3 Features are availabale"
    free -h
    top -o %MEM | head -n17
    top -o %CPU | head -n17
     ;;
esac
