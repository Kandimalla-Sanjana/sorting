#! /bin/bash
read -p "Enter value of a: " a
read -p "Enter value of b: " b
read -p "Enter value of c: " c
op3=$(($c+$(($a/$b))))
echo "c+a/b = " $op3
