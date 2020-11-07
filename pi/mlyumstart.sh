#!/bin/bash
 
export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libatomic.so.1 python3
source mlpi/bin/activate
jupyter lab --ip 127.0.0.1 --notebook-dir=../notebooks
deactivate
