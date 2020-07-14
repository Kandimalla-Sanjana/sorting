#! /bin/bash
declare -A operations
function sort()
{
        arr=("$@")
        n=${#arr[@]}
        for ((i = 0; i<n; i++))
        do
                for((j = 0; j<n-i-1; j++))
                do
                        if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
                        then
                                temp=${arr[j]}
                                arr[$j]=${arr[$((j+1))]}
                                arr[$((j+1))]=$temp
                        fi
                done
        done
        echo "Array in descending order is:"${arr[@]}
}

read -p "Enter value of a: " a
read -p "Enter value of b: " b
read -p "Enter value of c: " c
op1=$(($a+$(($b*$c))))
echo "a+b*c = " $op1
op2=$(($(($a*$b))+$c))
echo "a*b+c = " $op2
op3=$(($c+$(($a/$b))))
echo "c+a/b = " $op3
op4=$(($(($a%$b))+$c))
echo "a%b+c = " $op4
operations["a+b*c”]=$op1
operations["a*b+c"]=$op2
operations["c+a/b"]=$op3
operations["a%b+c"]=$op4

for index in ${!operations[@]}
do
        echo $index":"${operations[$index]}
done

counter=0
for index in ${!operations[@]}
do
        array[((counter++))]=${operations[$index]}
done
echo ${array[@]}

sort ${array[@]}

