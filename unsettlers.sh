# unsettlers of catan
                                                                                                    
interval=20
declare -a players=("eve" "david" "lolita" "anny" "ben")
 
#SETTINGS
#	TOGGLES - (under settings menu)
#	turnless mode
#	wait time
#	wait randomness
#	robber random?
#	pause on robber? or double time? say dock rules?
#	cardstack robber	
#	cardstack dice		

# 	cities and knights mode


# UNNEEDED SETTINGS
#  
echo_and_say() {
	echo $1
	say $1
}


while :
do
	roll=$((($RANDOM % 6) + (RANDOM % 6) + 2))
	echo_and_say "i rolled a ${roll}"
	if [ ${roll} -eq 7 ]; then
		echo_and_say "The robber is"
		echo_and_say ${players[$(($RANDOM % 5))]}
		echo_and_say "all players with 8 or more cards must discard half"
		sleep 10
	fi
	sleep $interval
done

