function play {
	echo "Enter your guess!"
	answer=$(ls -l |grep ^"-"|wc -l)
	not_answered=1
	while not_answered == 1
	do
		read guess
		if[[ answer -lt guess]]
		then
			echo "Enter lower number"
		fi
		if[[ answer -gt guess]]
		then
			echo "Enter greater number"
		fi
		if[[ answer == guess]]
		then
			echo "You won!"
			$not_answered=0
		fi
	done
}
play