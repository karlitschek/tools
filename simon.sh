#!/bin/bash
recurse() {
 for i in "$1"/*;do
    if [ -d "$i" ];then
        echo "dir: $i"
        xterm -e "cd $i; bash" &
        recurse "$i"
    fi
 done
}

recurse /home/simon/
