#!/bin/bash

# Strict mode
set -euo pipefail
IFS=$'\n\t' 

ipython notebook --no-browser --port 8888 --ip=*
