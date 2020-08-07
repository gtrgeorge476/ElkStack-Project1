
cat $1_Dealer_schedule | awk -F" " '{print $1, $2, $5,$6}'| grep "$2"

#sh roulette_dealer_finder_by_time.sh 0310 '02:00:00 PM'

