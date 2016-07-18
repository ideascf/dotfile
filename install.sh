#/bin/bash

PWD=`pwd`

for each in `ls`
do
    if [ -d $each ]
    then
        sh $each/install.sh
        if [ $? -ne 0 ]
        then
            echo "install $each failed"; exit -1
        fi
    fi
done
