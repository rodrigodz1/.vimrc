!/bin/bash

killall -q polybar
polybar rodrigo 2>&1 | tee -a /tmp/polybar.log & disown
