#Question from
#https://www.hackerrank.com/challenges/bash-tutorials-filter-an-array-with-patterns/problem

#You are given a list of countries, each on a new line. Your task is to read them into an array and then filter out (remove) all the names containing the letter 'a' or 'A'.


declare -a array1

while read x
do
    result=`(echo $x|grep "a") || (echo $x|grep "A") `
    if [ -z $result ]; then
        echo $x
    fi

done
