#!/bin/bash

COURSE="deVOPS FROM CURRENT SCRIPT"

echo  "BEFORE CALLING OTHER SCRIPTCOURSE : $COURSE"
echo  "process id of current script: $$"

sourse ./16-other-script.sh

echo "after calling other script, course: $COURSE "