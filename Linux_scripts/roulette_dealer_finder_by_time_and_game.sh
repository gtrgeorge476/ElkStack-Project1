cat $1_Dealer_schedule | awk -F" " '{print $1, $2, '$3','$4' }' | grep "2"
#dealer for blackjack on Mar. 10 @2:00pm run
#sh roulette_dealer_finder_by_time_and_game.sh 0310 '02:00:00 PM' '$3' '$4'

#To view the dealer for roulette on March 10 at 2:00 p.m., run:
sh roulette_dealer_finder_by_time_and_game.sh 0310 '02:00:00 PM' '$5' '$6'

#To view the dealer for Texas Hold 'Em on March 10 at 2:00 p.m., run:
sh roulette_dealer_finder_by_time_and_game.sh 0310 '02:00:00 PM' '$7' '$8'

