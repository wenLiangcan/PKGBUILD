#!/usr/bin/env bash

arg="";
until [ $# -eq 0 ]
do
    opt=$1;
    if [ "${opt/ /}" != "$opt" ]; then 
        arg="$arg \"$opt\"";
    else
        arg="$arg $opt";
    fi
    shift
done

function main()
{
    cd "/opt/rjsupplicant"
    sh -c "/opt/rjsupplicant/rjsupplicant $arg"
}

main;
exit 0;
