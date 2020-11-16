#!/bin/sh

IP=$(hostname -I | awk {'print $1}')


case $BLOCK_BUTTON in
    1) echo $IP | xclip -selection clipboard;;
    3) echo $IP | xclip -selection clipboard;;
    *) echo $IP ;;
esac

