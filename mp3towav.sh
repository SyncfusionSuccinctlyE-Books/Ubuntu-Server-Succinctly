#!/bin/bash

for file in ./*.mp3
do
mpg -w ./wavs/"${file}".wav "$file"
done
