#!/bin/bash
num="$2"
path="$3" 
downloadpath='/root/Download' #下载目录

if [ $num -eq 0 ]
    then
      exit 0
fi

function getdir(){
IFS=$'\n';for file in `ls "$1"`
    do
        if [ -d "$1/$file" ]  
        then
            getdir "$1/$file"
        else
            if [ "${1%/*}" = "$downloadpath" ] && [ $num -eq 1 ]
            then
                /usr/local/etc/OneDrive/onedrive "$1"
            elif [ $num -eq 1 ] 
            then
                /usr/local/etc/OneDrive/onedrive "$1/$file"
            else
                /usr/local/etc/OneDrive/onedrive -u "$downloadpath" "$1/$file"
                fi
        fi
    done
}

while true; do
filepath=$path 
path=${path%/*};   
if [ "$path" = "$downloadpath" ] 
    then  
      getdir "$filepath"
      if [ -d $filepath ]
      then
        rm -r "$filepath"
      else
        rm  "$filepath"
      fi
      echo 3 > /proc/sys/vm/drop_caches
      swapoff -a && swapon -a
      exit 0
fi
done