#! /bin/bash -x

declare -a array
array=(23 45 100 89)

echo ${array[@]}

length=${#array[@]}
temp=0

for (( i=0; i<$length; i++ ))
do
	for(( j=(($i+1)); j<$length; j++ ))
	do
		if [ ${array[$i]} -lt ${array[$j]} ]
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done
echo "sorted array in decsending order" ${array[@]}
