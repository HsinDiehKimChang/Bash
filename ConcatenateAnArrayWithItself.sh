#Question from
#https://www.hackerrank.com/challenges/bash-tutorials-concatenate-an-array-with-itself/problem

declare -a array1

while read x || [ -n "$x" ]  #prevent last line no space issue
#https://stackoverflow.com/questions/12916352/shell-script-read-missing-last-line
do
    array1+=("$x")
done


array1+=("${array1[@]}" "${array1[@]}")


echo ${array1[@]}
