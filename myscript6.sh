#!/bin/bash

# The function definition ( the actual function itself) must appear in the script before any calls to the function.

# Most other programming languages have the concept of a return value for functions, a means for the function to send data back to the original calling location. Bash functions don't allow us to do this. They do however allow us to set a return status. Similar to how a program or command exits with an exit status which indicates whether it succeeded or not. We use the keyword return to indicate a return status.

secret_prince(){
echo $1 is a secret prince # argument supplied during a function call
return 5
}
# The return status doesn't have to be hardcoded. It may be a variable

secret_prince prabal # function call with an argument
echo "the function returned $?"

# Remember that the variable $? contains the return status of the previously run command or function.
# Typically a return status of 0 indicates that everything went successfully. A non zero value indicates an error occurred.


# If all you want to do is return a number (eg. the result of a calculation) then you can consider using the return status to achieve this. It is not it's intended purpose but it will work. One way to get around this is to use Command Substitution and have the function print the result (and only the result).

lines_in_file(){
	cat $1 | wc -l
}

echo "the file $1 has $( lines_in_file $1 ) lines"


# recursion --> you could have experimented it yourself, now you are in that position
function factorial(){
	if [ $1 -le 1 ]
	then
		echo 1
	else
		echo $(( $1 * $( factorial $(( $1 - 1)) ) ))
	fi
}

factorial 3

# there are several other and efficient methods for recursion in bash
# https://stackoverflow.com/questions/9682524/recursive-function-in-bash?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

# By default a variable is global. This means that it is visible everywhere in the script. We may also create a variable as a local variable. When we create a local variable within a function, it is only visible within that function. To do that we use the keyword local in front of the variable the first time we set it's value.

var1='you are sexy'
function sexy(){
	local var1='i am sexy'
	var2='beauty lies in the eyes of beholder'
	echo -e "local var: $var1 \nglobal var: $var2"
	var1='you are hot!'
	local var1='i am hot!'
	echo -e "local var changed: $var1 \nglobal var: $var2"
}
sexy
echo -e "global var: $var1 \nglobal var: $var2"


# It is possible to name a function as the same name as a command you would normally use on the command line. This allows us to create a wrapper. eg. Maybe every time we call the command ls in our script, what we actually want is ls -lh. We could do the following:

ls () {
command ls -lh
}

ls

# In the example above, if we didn't put the keyword command in front of ls on line 5 we would end up in an endless loop. Even though we are inside the function ls when we call ls it would have called another instance of the function ls which in turn would have done the same and so on. Remember Recursion?

echo
chmod +x ./myscript7.sh
./myscript7.sh
