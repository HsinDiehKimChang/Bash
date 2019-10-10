#question from
# https://www.hackerrank.com/challenges/bash-tutorials-remove-the-first-capital-letter-from-each-array-element/problem

#Task
#You are given a list of countries, each on a new line. Your task is to read them into an array and then transform them in the following way:

#The first capital letter (if present) in each element of the array should be replaced with a dot ('.'). Then, display the entire array with a space between each country's names.


declare -a array1

while read x
do
    tmp=`echo $x | sed 's/^[A-Z]/./'`
    array1+=("$tmp")
done

echo ${array1[@]} 

