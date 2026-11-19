#!/bin/bash

ls -l | awk '$1 ~ /^-/ {s+=$5} END {print s+0, "bytes"}'
