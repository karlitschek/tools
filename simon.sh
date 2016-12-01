#!/bin/bash
#
# Some people work with a lot of terminal windows. 
# Usually they approach a state where they have a terminal open for every directory that exists.
# This scripts automates this and helps to reach an optimal working environment after just a few seconds.

# license AGPL-3.0
#
# This code is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License, version 3,
# as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License, version 3,
# along with this program.  If not, see <http://www.gnu.org/licenses/>
 
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
