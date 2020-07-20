#!/bin/bash

file=/tmp/last_active_window
if [[ -s $file ]] ; then
    wid=`head -1 $file`
    geo=`tail -1 $file`
    xdotool windowmap $wid
    xdotool windowmove $wid $geo
    cat /dev/null > $file
else 
    wid=`xdotool getactivewindow`
    name=`xdotool getwindowname ${wid} | cut -f4 -d' '`
    if [ ${name} == "scratch" ] ; then
        geo=`xdotool getwindowgeometry $wid | grep 'Position' | cut -f4 -d' ' | tr ',' ' '`
        xdotool windowunmap $wid
        echo $wid > $file
        echo $geo >> $file
    fi
fi
