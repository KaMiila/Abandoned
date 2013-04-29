#!/bin/bash

#Edit the following line!  This will set the working directory for Boinc. Use a full path and make sure your user has write access to that folder!

workdir=/home/pulsar/boinc

#Sanity Check

if [ ! $workdir ]; then
    echo "Set up the client like the README told you to!"
    exit 1
fi

#Now we will make the directory if it does not already exist
mkdir -p $workdir
boincmgr --clientdir=/usr/bin --datadir=$workdir
