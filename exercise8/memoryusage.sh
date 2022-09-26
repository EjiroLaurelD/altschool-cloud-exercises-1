#! /bin/bash

#ScriptName     :memoryusage.sh
#Description    :a script to receive an hourly update on memory usage

MEMUSAGE=$(free -h)
DATE=$(date +%H:%M:%S)
HOSTNAME=$(hostname)
MEMPERCENT=$(free | grep Mem |awk '{print $3/$2 * 100}')

if [[ $(date +%H%M) == 0000 ]];
then
        echo "Here is your memory usage log for today" | mutt -s "Your memory usage for $(date)" -a memoryusages.log -- altschooltesting@gmail.com
        rm memoryusages.log
else
        echo "Your memory usage for your $HOSTNAME server at $DATE is:"
        echo ""
        echo "$MEMUSAGE"
        echo ""
        echo "You have used $MEMPERCENT% of your total memory"
        echo "--------------------------------------------------------"
fi
