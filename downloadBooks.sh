#!/bin/bash

while read line
do
    dirname=`echo $line | cut -d "|" -f1`
    url=`echo $line | cut -d "|" -f2`
    # mkdir -p "$dirname"
    # pushd "$dirname"
    # wget $url
    # popd
    filename=${url##*/}
    # echo $filename
    # echo ncert-books/$dirname/$filename
    gsutil cp $url gs://ncert-books/$dirname/$filename
done < urls.txt

