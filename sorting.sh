#! /bin/bash
read -p "Enter value of a: " a
read -p "Enter value of b: " b
read -p "Enter value of c: " c
op1=$(($a+$(($b*$c))))
echo "a+b*c = " $op1
op3=$(($c+$(($a/$b))))
echo "c+a/b = " $op3
counter=0
for index in ${!operations[@]}
do
        array[((counter++))]=${operations[$index]}
done

echo ${array[@]}

