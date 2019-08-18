#!/bin/bash 


function usage()
{

echo "Time   :   $0  [-a <option>][-b <option>][-c]"

}


while getopts a:b:c parm ; do
case $parm  in
a)echo "current day "
#echo "$EPOCHSECONDS"
# date --date='@1566097352'
 echo `date -d "0 days" +%d/%B `
echo `date  `
  ;;
b)echo "next day "
#date -d "1 days" +%d/%B
  echo `date -d "1 days" +%d/%B `
  ;;
c)echo "previos day"
	echo `date -d "-1 days" +%d/%B `
  ;;
*)usage "Ivalid argument"
  ;;
esac
done

shift $((OPTIND-1))

