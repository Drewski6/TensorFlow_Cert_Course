#!/bin/sh
# This script uses another script that is located in /home/drew/.myscripts
# that takes the ipynb file and converts it to a md file.
# This script fills in the file name, destination path, and index file name automatically.
# Just pass a number to indicate the video number.

number=""

while getopts n: flag
do
    case "${flag}" in
        n) number=${OPTARG};;
    esac
done

if [ "${number}" = "" ]
then
    echo "Incorrect usage: vimwiki_load.sh -n [notebook number]"
    exit 1
else
    add_to_vimwiki.sh -f ${number}p*.ipynb -d ~/Documents/vimwiki/Python3/tensorflow_cert_udemy_course -i "tensorflow_cert_udemy_course.md"
fi
