#!/bin/bash
# LOOPS
# the same loop can be written in many ways
########################################################
# METHOD1
counter=1
while [ $counter -le 10 ]  # le --> less than or equal | gt --> greater than | ge --> greater than or equal | lt --> less than 
do
	echo $counter
	(( counter++ ))
done
echo "METHOD 1 done"
echo Resetting counter to 1
counter=1
########################################################

# METHOD2
while [ $counter != 10 ] 
do
	echo $counter
	(( counter++ ))
done
echo "METHOD 2 done"

echo Resetting counter to 1
counter=1
########################################################

# METHOD3
until [ $counter -gt 10 ] 
do
	echo $counter
	(( counter++ ))
done
echo "METHOD 3 done"
echo Resetting counter to 1
counter=1
########################################################
# METHOD 4
for x in {1..10} # It's important when specifying a range like this that there are no spaces present between the curly brackts { }. If there are then it will not be seen as a range but as a list of items.
do
	echo $x
done
echo "METHOD 4 done"

########################################################
for x in {1..10..2} # step size
do
	echo $x
done
echo "for with step size done"
########################################################

for x in {10..1..2} # decrement with step size
do
	echo $x
done
echo "for decrement with step size done"
########################################################
names='prabal dev pogi secret_prince 42'
for person in $names
do
	echo $person
done
########################################################

# I am skipping continue command
# https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php
# go through the above link to read


options="add sub mult div quit"
PS3='Select an option: '
select choice in $options
do 
	if [ $choice == 'add' ] 2> /dev/null
	then
		echo Addition is selected 
	
	elif [ $choice == 'sub' ] 2> /dev/null
	then
		echo Subtraction is selected
	 
	elif [ $choice == 'mult' ] 2> /dev/null
	then
		echo Multiplication is selected
	 
	elif [ $choice == 'div' ] 2> /dev/null
	then
		echo Division is selected
		
	elif [ $choice == 'quit' ] 2> /dev/null
	then
		break
	else
		echo Wrong choice
	fi
done

# on executing the above snippet you see that the prompt changes to #?
# and it is like a forever loop therefore break statement is necessary with a quit options
# to change the prompt to something interesting, uncomment the PS3 line above 
# 2> /dev/null is just to suppress errors when a wrong choice is selected
# https://stackoverflow.com/questions/15678796/suppress-shell-script-error-messages?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
# try executing the script without 2> /dev/null to see the difference


