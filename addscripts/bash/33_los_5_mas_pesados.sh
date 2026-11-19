#!/bin/bash

du -ah "$HOME" 2>/dev/null | sort -hr | head -5
