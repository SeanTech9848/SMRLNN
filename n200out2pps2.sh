#!/bin/bash

n=200
out=2
pps=2



echo 'mkdir -p results'
mkdir -p results

#ni_str="${n}"
mkdir="mkdir -p results/"
id='n'${n}'out'${out}'pps'${pps}
#echo ${id}

mkid=${mkdir}${id}
echo ${mkid}
${mkid}

strtrain='python SMRL_param_search.py configs/'${id}'.txt 1'
echo ${strtrain}
#${strtrain}


streva='python evaluate.py configs/'${id}'.txt 1'
echo ${streva}
#${streva}


###### commands

${mkid}
${strtrain}
${streva}


