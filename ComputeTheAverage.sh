# Question from  https://www.hackerrank.com/challenges/bash-tutorials---compute-the-average/problem
#Given  integers, compute their average correct to three decimal places.

#Input Format
#The first line contains an integer, .
# lines follow, each containing a single integer.

#Output Format
#Display the average of the  integers, rounded off to three decimal places.

read N


for ((i=1;i<="$N";i++));
do
    read x
    sum=$((sum + x))
done

avg=`echo "$sum"/"$N" | bc -l`

#echo $avg
printf "%.3f" $avg
