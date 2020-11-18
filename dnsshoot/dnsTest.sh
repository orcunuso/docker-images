#!/bin/sh

#DNSIP=$1
#ARECORD=$2
#LOOPWAIT=$3
FILENAME=dnsTest.log.$(date +"%Y%m%d")

if [[ ! -f $FILENAME ]]; then
    touch ./$FILENAME
fi

while true; do

    RESULT=$(dig -u @$DNSIP $ARECORD | grep "ANSWER SECTION" -A3)
    if [[ -z "$RESULT" ]]; then
        echo $(date) --- "ERROR: The query returned no result" | tee -a $FILENAME
    else
        RESULTIP=$(echo "$RESULT" | grep $ARECORD | awk '{print $5}')
        TIMEUSEC=$(echo "$RESULT" | grep Query | awk '{print $4}')
        echo $(date) --- "$ARECORD - $RESULTIP in $TIMEUSEC usec from server $DNSIP" | tee -a $FILENAME
    fi
    sleep $LOOPWAIT
done

