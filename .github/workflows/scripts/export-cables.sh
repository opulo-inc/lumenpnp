#!/bin/bash

pattern='([^\/]+)\/?$'
imgstring='img'

mkdir cable-export

for harness in pnp/cad/CHA/*/ ; do
    echo "path: $harness"

    if [[ $harness =~ $pattern ]]; then

        name="${BASH_REMATCH[1]}"

        if [ "$name" != "$imgstring" ]; then
            echo "filename: $name"

            arg=./"$harness""$name".yml

            echo "wireviz arg: $arg"

            wireviz $arg

            cp ./"$harness""$name".png cable-export/


        else
            echo "Skipping img folder"
        fi  
    fi
done
