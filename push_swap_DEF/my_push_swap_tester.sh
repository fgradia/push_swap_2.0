#! /bin/bash

make re

#gcc ft_tester.c && ./a.out $1 > test.txt 

#ARG=$( cat test.txt)

MIN=$(( -999 * $1))
MAX=$(( 999 * $1))

ARG=$( jot -r $1 $MIN $MAX )

#$ARG > arg.txt

#echo $ARG
#echo $ARG > arg.txt

#./push_swap $ARG  | ./checker $ARG



./push_swap $ARG #| ./checker_Mac $ARG

./push_swap $ARG | wc -l

#rm -rf a.out

make fclean
