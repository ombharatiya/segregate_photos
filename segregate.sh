#!/bin/bash
curr_working_dir=`pwd`
for filename in $(ls | grep '.jpg')
    do
        IFS='-' read -r year month sr_no <<<"$filename"
        directory="processed/${year}/${month}/"
        mkdir -p "${directory}"
        mv "${curr_working_dir}/${filename}" "${directory}"
    done
