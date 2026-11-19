#!/bin/bash

awk -F: '{print $1 "\t" $7}' /etc/passwd
