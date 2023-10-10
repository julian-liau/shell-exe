#!/bin/bash

num1=$1
num2=$2

if num1 in {1..10}
then


# Addition deux nombres
sum=$(( num1 + num2 ))

# Affichage du résultat
echo "Result : $sum"
fi
