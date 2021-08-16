#!/bin/bash
#***************************************************#
# Week 3: Homework - A High Stakes Investigation    #
# BONUS                                             #
#                                                   #
# Author: David Lee                                 #
# Date	: 28 May 2021                               #
#***************************************************#
#
# This script will display on screen dealer names specific to the time, date and name of the game entered by the user.
#
# usage: sh roulette_dealer_finder_by_time_and_game.sh 12 AM 0310 Roulette   
#        Note: 12 is the time, AM is AM or PM, 0310 is date of march10, Roulette is the name of the game.
#              if the game name is not entered then all dealer names will be displayed under the game name heading.
#
#-----------------------------------------------------------------------------------------------------------------------

# checks if the name of the game is entered by the user or not
if [ -z "$4" ]
then
    # print appropriate headings
    echo "No games specified. Printing all dealers"
    echo "time        BlackJack       Roulette          Texas_Hold_EM"
    
    # grep is used to accept input from the user the follwoing : time with AM or PM, date in the form 0310 where 03 is month and 10 is day
    # since no game name is entered all dealer names rostered on the specific time and date according to the games will be printed.
    # awk is used to look at the grep output and pick out fileds of S1 (time), S2 (AM or PM), S4 S4 (BlackJack dealer name)
    #     $5 $6 (Roulette dealer name), $7 $8 (Texas Hold EM dealer name)
    grep -E $1.*$2 $3_Dealer_schedule | awk -F " " '{print $1,$2,$3,$4,$5,$6,$7,$8}'
  
    # print the date
    echo "date: " $3
elif [ $4 = 'BlackJack' ]
then
     echo "BlackJack Dealer"

     # print BlackJack dealer name
     grep -E $1.*$2 $3_Dealer_schedule  | awk -F " " '{print $1,$2,$3,$4}'
     echo "date: " $3

elif [ $4 = 'Roulette' ]
then
     echo "Roulette Dealer"
     # print Roulette Dealer name
     grep -E $1.*$2 $3_Dealer_schedule  | awk -F " " '{print $1,$2,$5,$6}'
     echo "date: " $3

elif  [ $4 = 'Texas' ]
then
      echo "Texas Hold Em Dealer"
      # print Texas Hold Em dealer name
      grep -E $1.*$2 $3_Dealer_schedule  | awk -F " " '{print $1,$2,$7,$8}'
      echo "date: " $3
else
      # print when invalid entry in detected
      echo "please try again with valid inputs"

fi
