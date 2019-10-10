#Question from https://www.hackerrank.com/challenges/bash-tutorials-slice-an-array/problem
#Given a list of countries, each on a new line, your task is to read them into an array. Then slice the array and display only the elements lying between positions  and , both inclusive. Indexing starts from from .

#Input Format
#A list of country names. The only characters present in the country names will be upper or lower case characters and hyphens.

#Output Format
#Display the sliced portion of the array of country names, with a space between each of them.


declare -a array1

while read x
do
    array1+=("$x")
done

echo ${array1[@]:3:5} 
