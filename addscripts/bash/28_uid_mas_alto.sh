#!/bin/bash

sort -t: -k3,3n /etc/passwd | tail -1
