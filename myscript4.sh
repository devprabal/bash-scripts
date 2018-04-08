#!/bin/bash
if [ $1 -gt 100 ]
then
	echo entered no. is greater than 100 # indentation is not a necessity in bashscript
fi # end of if structure

# The square brackets ( [ ] ) in the if statement above are actually a reference to the command test. This means that all of the operators that test allows may be used here as well. Look up the man page for test to see all of the possible operators.

#   = is slightly different to -eq. [ 001 = 1 ] will return false as = does a string comparison (ie. character for character the same) whereas -eq does a numerical comparison meaning [ 001 -eq 1 ] will return true

if [ $1 -gt 100 ]
then
	echo the number is greater than 100
	
	if (( $1 % 2 == 0 ))
	then
		echo it\'s an even no.
	
	elif (( $1 % 3 == 0))
	then
		echo it\'s divisible by 3
	
	else
		echo it\'s an odd no.
	fi
fi

# You can have as many elif branches as you like. The final else is also optional.



if [ $1 -ge 18 ]
then
	echo You may go to the party.

elif [ $2 == 'yes' ]
then
	echo You may go to the party but be back before midnight.

else
	echo You may not go to the party.

fi

# use of Boolean operators && (and) || (or) != (not equal to)
if [ $USER == 'prabal' ] && [ $2 != 'secret_prince' ]
then
	ls -alh # (all) (long listing format) (human readable sizes like K, M, G)
	echo "WELCOME!"
else
	echo get out!
fi

echo Enter choice: 
read choice
echo Enter two numberes: 
read num1 num2 

# bash supports only integral arithmetic
case $choice in
	add)
		echo result of addition is $(( $num1 + $num2 ))
		;;
	sub)
		echo result of subtraction is $(( $num1 - $num2 ))
		;;
	mult)
		VAR=$(echo "scale=2; $num1 * $num2" | bc) # this is a trick to floating arith.
		echo result of multiplication is $VAR
		;;
	div)
		# another simple trick for flaoting point arith.
		echo result of division is 
		echo "print($num1/$num2)" | python
		# yet another way of writing the above line
		VAR=$(echo -e "a=$num1/$num2 \nprint(a)" | python)
		echo $VAR

		;;
	*)
		echo "type your option in abbreviated lowercase letters"
		;;
esac


# some information/ hint on VAR=$(echo -e "a=$num1/$num2 \nprint(a)" | python)
#‘-e’
#     Enable interpretation of the following backslash-escaped characters
#     in each STRING:

#     ‘\a’
#          alert (bell)
#     ‘\b’
#          backspace
#     ‘\c’
#          produce no further output
#     ‘\e’
#          escape
#     ‘\f’
#          form feed
#     ‘\n’
#          newline
# et cetera --> type info echo in terminal for detailed information

# https://stackoverflow.com/questions/6167127/how-to-put-multiple-statements-in-one-line?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

#I do not incentivise this, but say you're on command line, you have nothing but python and you really need a one-liner, you can do this:


#python -c "$(echo -e "a='True'\nif a : print 1")"

#What we're doing here is pre-processing \n before evaluating python code.

#That's super hacky! don't write code like this.

