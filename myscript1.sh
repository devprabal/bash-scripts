#!/bin/bash  

# This is a comment
#the shebang(#!)tells the location of interpreter for the bash script whose path is specified as /bin/bash
# execute the file by ./<file-name>.sh in terminal at the file directory location
# but first make sure that you have granted it the permission to run as executable
# chmod +x /path/to/your/file.txt --> see this in ~/prabal/Pictures for other options with chmod

# you can also make your scripts available to be execute from any location in terminal
# for that setup a local bin folder in ~
# add that bin folder to PATH
# there is a screenshot in ~/prabal/Pictures for setting up bin and adding to PATH


# echo is same as print
echo "hello world"
# varialbes start with alphabets or _underscore
# you cannot have space on any side of the equal= sign when assigning variables
var1=hi
var2='$var1 there'
var3="$var1 there"
echo $var1 
echo $var2
echo $var3 
echo $var1 $var2 $var3 #prints all in same line though, it separates them individually
var4=/home/prabal/Documents
ls $var4
var5=$(ls ~/Documents | wc -l) #save the output of command to a variable
# the output is number of files in the given location
echo "These are the # of content of Documents directory: $var5 "
# export doesn't make a variable global to many scripts
# the scope of a variable is until the script in which it is found is in running process
export var1 #creates a "copy" of var1 and sends it to another child script
chmod +x ./myscript2.sh # set permission for file myscript2.sh if not already done
# see more for chmod in ~/Pictures
./myscript2.sh

echo $var1

# user input can be given at the command line during execution of script file --> see mycopyscript.sh where the input arguments correspond to $1 through $9

# other way to ask user for an input

echo Who am i talking to?
read var6
echo it\'s Nice to meet you $var6 # notice the use of \ to escape special meaning of special characters
echo
# simple echo can work as a newline

#  read can be used with a variety of command line options
# Two commonly used options however are -p which allows you to specify a prompt and -s which makes the input silent. 
read -p 'Username: ' uservar
read -p 'Password: ' userpass
echo
echo Thanks $uservar We got your login details

read a b c
echo First Input was $a
echo Second Input was $b Third Input was $c

# The general mechanism is that you can supply several variable names to read. Read will then take your input and split it on whitespace. The first item will then be assigned to the first variable name, the second item to the second variable name and so on. If there are more items than variable names then the remaining items will all be added to the last variable name. If there are less items than variable names then the remaining variable names will be set to blank or null.

# there is a way to read from STDIN also and bash supports pipelining too
# https://ryanstutorials.net/bash-scripting-tutorial/bash-input.php


# you can declare a constant as declare -r <constant_name>=<constant_value>
declare -r NUM1=5

# All information is taken from https://ryanstutorials.net/bash-scripting-tutorial/
# the above mentioned website is a good start for learning LINUX
# do have a look





