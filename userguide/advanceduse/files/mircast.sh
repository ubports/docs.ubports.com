#!/bin/bash
SCREEN_WIDTH=384
SCREEN_HEIGHT=640
PORT=1234
FORMAT=rgba


if [[ $# -eq 0 ]] ; then
    echo 'usage: ./mircast.sh UT_IP_ADDRESS , e.g: ./mircast.sh 192.168.1.68'
    exit 1
fi

IP=$1

LOCAL_COMMAND='nc -l -p $PORT | gzip -dc | mplayer -demuxer rawvideo -rawvideo w=$SCREEN_WIDTH:h=$SCREEN_HEIGHT:format=$FORMAT -'
REMOTE_COMMAND="mirscreencast -m /run/mir_socket --stdout --cap-interval 1 -s $SCREEN_WIDTH $SCREEN_HEIGHT | gzip -c | nc \$SSH_CLIENT $PORT"
ssh -f phablet@$IP "$REMOTE_COMMAND"
eval $LOCAL_COMMAND
