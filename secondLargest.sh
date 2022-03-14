#! /bin/bash -x

declare -a num
num=(34 67 54)
echo "${num[@]}"

length=${#num[@]}
max=${num[0]}
secondMax=${num[0]}

for (( i=0; i<$length; i++ ))
do
	if (( num[$i] > $max ))
	then
		secondMax=$max
		max=${num[$i]}
	elif (( ${num[$i]}>$secondMax && ${num[$i]}!=$max ))
	then
		secondMax=${num[$i]}
	fi
done

echo "second largest number is "$secondMax
