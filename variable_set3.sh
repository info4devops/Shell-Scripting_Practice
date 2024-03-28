variable1=""
if [[ $variable1 = "" ]]  # use this as well if [ "$variable1" = "" ]
then
  echo 'variable1 is empty'
else
  echo 'variable1 is not empty'
fi