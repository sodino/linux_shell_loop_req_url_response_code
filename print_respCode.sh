#!/bin/bash

function respCode
{
  NAME=$1
  URL=$2

  DATE=$(date +%Y%m%d-%H:%M:%S)
  STATUS_CODE=`curl -o /dev/null -s -w %{http_code} $URL`
  echo $DATE $NAME $STATUS_CODE
  #echo $URL
}

function start
{
  count=0
  NAME=""
  URL=""

  for site in `cat sites.txt`
    do
      let "count++"
      
      mod=$(($count % 2)) 

      if [ "$mod" = "1" ];
        then
          NAME=$site
          else
            URL=$site
            
            respCode $NAME $URL
            fi
      
    done


    echo ------------  
      
}

while : 
do
  start
  #echo start sleep $(date +%Y%m%d-%H:%M:%S)
  sleep 120
  #echo end sleep   $(date +%Y%m%d-%H:%M:%S)
done