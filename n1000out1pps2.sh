#!/bin/bash


## YS
## ssh joanna@34.125.180.76
## source activate py35

## ssh zhuhao1@34.125.3.225
# source activate py5


# sh n200out4pps4.sh
# sh n300out4pps4.sh
# sh n500out4pps4.sh
# sh n1000out4pps4.sh




#n200out3pps2

n=1000
out=1
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


