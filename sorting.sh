#! /bin/bash
declare -A operations
read -p "Enter value of a: " a
read -p "Enter value of b: " b
read -p "Enter value of c: " c
op1=$(($a+$(($b*$c))))
echo "a+b*c = " $op1
op3=$(($c+$(($a/$b))))
echo "c+a/b = " $op3
operations["a+b*c”]=$op1
operations["a*b+c"]=$op2
operations["c+a/b"]=$op3
operations["a%b+c"]=$op4

for index in ${!operations[@]}
do
        echo $index":"${operations[$index]}
done

