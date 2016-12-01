#!/bin/bash
# Some people work with a lot of terminal windows. 
# Usually they approach a state where they have a terminal open for every directory that exists.
# This scripts automates this and helps to reach an optimal working environment after just a few seconds.

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
