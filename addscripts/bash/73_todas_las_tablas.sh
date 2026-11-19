#!/bin/bash

for a in {1..10}; do for b in {1..10}; do echo "$a x $b = $((a*b))"; done; echo "---------"; done
