#!/usr/bin/sh

find_value()
{
        object=`cat $1`
        value=`echo "$object" | jq $2`
        echo "Value ::: $value"

}

echo "Please enter the file name having the nested json object"
read file

echo "Please provide the key in format [ '.a.b.c' ]::"
read key

find_value $file $key
