#!/bin/bash
# Simple script to output to file the name of the dealer who worked on at specific date and times the losses occured.
#
# Usage: sh march.sh $1 S2 S3 ---> replace $1 $2 $3 with date value such as 10 12 15 that you want to check
#
# Author: David Lee 28/5/21
#
#--------------------------------------------------------------------------------------------------------------------
#
# using grep command to extract Dealers who worked on at specific date and pipe the result to awk
# awk command to extract time and dealer name and write to Dealer_working_during_losses. 
# append result to Dealer_working_during_losses until all times are covered.

grep "05:00:00 AM" 03$1_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' > Dealers_working_during_losses
grep "08:00:00 AM" 03$1_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses
grep "02:00:00 PM" 03$1_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses
grep "08:00:00 PM" 03$1_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses
grep "11:00:00 PM" 03$1_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses
grep "05:00:00 AM" 03$2_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses
grep "08:00:00 AM" 03$2_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses
grep "02:00:00 PM" 03$2_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses
grep "08:00:00 PM" 03$2_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses
grep "11:00:00 PM" 03$2_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses
grep "05:00:00 AM" 03$3_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses
grep "08:00:00 AM" 03$3_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses
grep "02:00:00 PM" 03$3_Dealer_schedule | awk -F " " '{print $1,$2,$5,$6}' >> Dealers_working_during_losses

