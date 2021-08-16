#!/bin/bash

# change INCORRECT_PASSWORD to ACCESS_DENIED in LogA.txt and write to access_denied.txt
sed s/INCORRECT_PASSWORD/ACCESS_DENIED/ LogA.txt > access_denied.txt

# printout the column 4 and 6 from LogA.txt to filtered_logs.txt
awk '{print $4, $6}' LogA.txt > filtered_logs.txt
