#!/bin/bash

    echo "all variables :$@"
    echo "number of variables passed: $#"
     echo "script name : $0"
      echo "present working directory: $PWD"
       echo "home directory or current user: $HOME"
       echo "which user is running the script : $USER"
        echo "HOSTNAME: $HOSTNAME"
         echo "PROCESS ID OF CURRENT SHELL SCRIPT : $$"

SLEEP 60 & 
 echo "PROCESS ID OF LAST BACKGROUND COMMAND :$!"