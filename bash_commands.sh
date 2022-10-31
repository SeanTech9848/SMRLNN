#!/bin/bash



# out 1
 source activate py5
 sh n200out1pps2.sh
 sh n300out1pps2.sh
 sh n800out1pps2.sh

 source activate py5
 sh n500out1pps2.sh
 sh n1000out1pps2.sh

# out 2
 source activate py5
 sh n200out2pps2.sh
 sh n300out2pps2.sh
 sh n800out2pps2.sh

 source activate py5
 sh n500out2pps2.sh
 sh n1000out2pps2.sh

# out 3
 source activate py5
 sh n200out3pps2.sh
 sh n300out3pps2.sh
 sh n800out3pps2.sh

 source activate py5
 sh n500out3pps2.sh
 sh n1000out3pps2.sh






#n200out3pps2

n=200
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


