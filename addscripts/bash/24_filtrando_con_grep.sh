#!/bin/bash

grep '/bin/bash$' /etc/passwd
echo 'Total:'
grep -c '/bin/bash$' /etc/passwd
