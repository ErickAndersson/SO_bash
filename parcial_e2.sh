#!bin/bash

function fibonacci() {
    if [ $1 = 0 ]; then
        echo 0
    elif [ $1 = 1 ]; then
        echo 1
    else
        echo $( fibonacci '1-1' )
    fi
}

fibonacci 5