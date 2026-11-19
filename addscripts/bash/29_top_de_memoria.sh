#!/bin/bash

ps aux | sort -k4,4nr | head -6 | awk 'NR>1 {print $1, $2, $4}'
