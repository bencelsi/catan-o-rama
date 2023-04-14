# unsettlers of catan
  

interval=23
declare -a players=("ben" "rebecca" "jules" "david")
message='we rolled a'


while :
do
	num=$((($RANDOM % 6) + (RANDOM % 6) + 2))
	say $message ${num}
	if [ ${num} -eq 7 ]; then
		say 'the robber is ' ${players[$(($RANDOM % 5))]}
		say 'all players with 8 or more cards discard half'
		sleep 10
	fi
	echo $message ${num}
	sleep $interval
done
