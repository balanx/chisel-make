#! /bin/bash

if test "-$1-" = "--"
then
    echo "Usage :"
    echo "    ./chisel-setting.sh ./lib-2.11"
    echo
    exit 1
fi


FN=config.chisel

echo "SCLIB=\"" > $FN

for i in `ls $1`;
{
    echo $1/$i";\\" >> $FN
}

echo "\"" >> $FN
