#!/bin/bash
# Week 3: Homework - A High Stakes Investigation
# Step 4: Scripting Your Tasks
#
# Author: David Lee
# Date	: 28 May 2021
# 
# This script will analyze the employee schedule to easily find the roulette dealer at a specific data and time
#
# To perform AND operation use the . 
# grep command will accept three inputs
# $1 is four digit date
# $2 is the time 
# $3 is the AM/PM All upper case
#
# for example: grep 0310 12:00:00 AM 
#
# awk will display screen output with time include AM or PM with the name of the dealer seperated by a space.


grep -E $2.*$3 $1_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}'
