#!/bin/bash

RANDOM=$$
for i in `seq 10`
do
        echo $((i++)), $RANDOM >> inputdata
done
