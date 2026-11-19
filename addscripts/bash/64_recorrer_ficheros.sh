#!/bin/bash

for f in *; do if [ -f "$f" ]; then echo "$f ocupa $(stat -c%s "$f") bytes"; fi; done
