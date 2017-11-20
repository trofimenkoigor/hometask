#/bin/bash

tree(){
    local space=$2

    if [ -d $1 ]
    then
        printf "%s" $space " Directory: " $(cd $(dirname $1) && pwd)
        printf "\n"
        cd $1
        space=$space'--' 
        for a in *
        do
            tree $a $space
        done
        cd ..
    elif [ "$(ls -A $1 2>/dev/null)" ]; then
        	printf "%s" $space " File: "$(cd $(dirname $1) && pwd) /$1
		if [[ $1 != *.bin ]]; then		
			printf " has $(wc -l < $1) lines"
		fi
        	printf "\n"
    
    fi
}    

cd $1
for file in *
do
    space="|"
    tree $file $space
done
