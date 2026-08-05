#! /bin/bash
echo -e "Filename:  \c"
read -r file
touch file.sh
echo "#! /bin/bash" >> $file.sh
echo "#Purpose: " >> $file.sh
echo "#Created Date: " `date` >> $file.sh
echo "#Author: $(whoami) " >> $file.sh
echo "## START ##" >> $file.sh



#you can write your script here
#tip : if you add this script to your /bin directory you can use it as a command 




echo "## END ##" >> $file.sh


