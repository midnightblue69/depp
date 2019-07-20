#!/bin/bash
function echo_stars () {
    for ((i=$1; i<=$2; i++)); do echo -n '*'; done
    echo "****"
}

projects="projects.depp"

if [ -f $projects ] 
then
    while IFS= read -r line
    do
        start=1
        end=${#line} 
        echo -e " \e[0;33m"
        echo_stars $start $end
        echo "* $line *"
        echo_stars $start $end
        echo -e " \e[0m"

        cd $line
        #echo $@
        git $@
        cd ..
    done < "$projects" 
else
    echo "file $projects DOES NOT exists." 
    exit 9999 # die with error code 9999
fi

