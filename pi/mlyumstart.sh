#!/bin/bash
 
# export LD_PRELOAD=/usr/lib/arm-linux-gnueabihf/libatomic.so.1.2.0 python3
source mlpi/bin/activate
jupyter lab --ip 127.0.0.1 --notebook-dir=.
deactivate
