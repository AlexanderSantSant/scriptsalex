#!/bin/bash

> monitor.log
for i in 1 2 3; do echo "$(date +%H:%M:%S) - $(uptime)" >> monitor.log; if [ "$i" -lt 3 ]; then sleep 5; fi; done
cat monitor.log
