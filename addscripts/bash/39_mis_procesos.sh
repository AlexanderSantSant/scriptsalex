#!/bin/bash

ps -u "$(whoami)" -o pid=,args= --sort=pid
