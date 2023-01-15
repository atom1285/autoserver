#!/usr/bin/env bash

echo "#"
echo "# Package manager script"
echo "# Action: apt $*"

i=0
while fuser /var/lib/dpkg/lock-frontend >/dev/null 2>&1 ; do
    case $(($i % 4)) in
        0 ) j="-" ;;
        1 ) j="\\" ;;
        2 ) j="|" ;;
        3 ) j="/" ;;
    esac
    echo -en "\r[$j] Waiting for other software managers to finish..."
    sleep 0.5
    ((i=i+1))
done

sudo apt "$@"