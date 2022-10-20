#! /usr/bin/bash
# Author: André Daniel Dussing 

#I decided to first get all the input data and meta data that needs to be processed by the script. After that I devided the script into 4 different parts using if clauses
# The cases are: no argument from the user, 1 argument from the user, 2 arguments from the user, 2 or more arguments from the user. Since it was not specified what should happen if there are more than 2 arguments passed
#I decided that the I thought it would be the best case to display an error message to the user and invoking an error. The same, which would happen if the user provides no argument at all. 
#The cases without error would be 1 and 2 arguments being passed. I decided to not display anything in that case, since the user might call the script more than one time and it would 
# not good pratice to print out every time "successfully executed". 

min_number=1 # number of minimum arguments required
max_number=2 # number of maximum arguments possible
args=$# #number of arguments  passed
letter=x #just a letter


if (($args==$max_number)) #determine if there is a width passed 
then 
    default_width=$2
    default_res=$2
    default_res+=$letter
    default_res+=$default_width # e.g. 200x200
else
    default_width=100
    default_res=100
    default_res+=$letter
    default_res+=$default_width # 100x100
fi

string=$1 # get the path as a string
len_string=${#string} # length of the string 
start_extension=${#string}-4 #where does the extension start e.g. .png


if (($args<$min_number)) # less arguments than needed 
then
    echo "Error no path given"
    exit 1 
fi

if (($args==$min_number)) # only image path given as argument
then 
    new_filename=${string:0:-4} # filename +
    new_filename+=$default_width # + width 
    new_filename+=${string:$start_extension:$len_string} # + format
    convert $1 -resize $default_res $new_filename #actual command using imagemagick
fi

if (($args==$max_number)) # only when given path and new width 
then 
    new_filename=${string:0:-4} # filename +
    new_filename+=$default_width # + width 
    new_filename+=${string:$start_extension:$len_string} # + format
    convert $1 -resize $default_res $new_filename ##actual command using imagemagick
fi

if (($args>$max_number)) #only when given 3 or more arguments
then
    echo "too many arguments"
    exit 1 
fi