#!/bin/bash

starttime=$(date +%s)
echo " Start time is : $starttime"

sleep 10

endtime=$(date +%s)
echo "end time is : $endtime"
totaltime=$((endtime-starttime))
echo "total time taken : $totaltime seconds"


