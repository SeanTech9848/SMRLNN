#!/bin/bash

mkdir -p results
mkdir -p results/200_2_2

# YS
# ssh sunyang@34.125.192.130
# source activate py35

# python SMRL_param_search.py configs/200_2_2.txt 10
python SMRL_param_search.py configs/200_2_2.txt 1

python evaluate.py configs/200_2_2.txt 1




# sh 200_2_2.sh
