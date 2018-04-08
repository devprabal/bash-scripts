#!/bin/bash
# basic arithmetic
# let is a built-in function of Bash that allows to do arithmetic
let "a = 5+4"
echo $a
# the above is not often used
# expr item1 operator item2 #notice the white spaces
expr 5 + 4
expr 5 % 4
expr 4 \* 5
var1=$(expr 6 / 3)  #command sustitution i.e. evaluate the command and assign it to variable
echo $var1

expr 5+4 # this will output 5+4 so always use spaces

# use double paranthesis method --> $((expression))
# double parenthese is quite flexible in how you format it's expression. As double parentheses is builtin to Bash it also runs slighly more efficiently (though to be honest, with the raw computing power of machines these days the difference in performance is really insignificant).

a=$((3 + 4))
b=$((3+4))
c=$((3+ 6 ))
d=$((3 * 4))
e=$(($a + b)) # you can use/not use $ sign before refrencing the variable here
echo $a , $b, $c , $d , $e
((b++)) # this won't print the result on screen
echo $b # you need to echo out the result
((b+=3)) # $ is like refrence to variable i.e. content of variable
# try doing (($b+=3)) --> this will give an error 8+=3 can't be done
echo $b
echo $((3+4)) # not--> echo ((3+4)) 
# length of a variable
# ${#variable}
var="hello World!"
echo ${#var}
echo ${#b}

# $RANDOM will return a random number. This number is between 0 and 32767
s=$RANDOM
echo $s
s=$((s % 100)) # random number between 0 and 100, 100 exclusive, 0 inclusive
echo $s


