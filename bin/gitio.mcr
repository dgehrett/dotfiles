#!/bin/zsh

curl -i http://git.io -F "url=https://github.com/Homefinder/movingcompanyreviews/issues/$1" -F "code=MCR-$1"




