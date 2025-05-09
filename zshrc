setopt EXTENDED_GLOB
work() {
	if [[ $(tput cols) -ge 60 && $(echo "$PWD" | wc -c) -le 50 ]]
	then
		printf "$USER@$HOSTNAME"
	else
		printf "%s" $(date +%H:%M)
	fi
}

function myplace() {
if [[ "$PWD" == "$HOME" ]]
then
	echo " "
elif [[ "$PWD" == @("$HOME"/SCRIPTS/*|"$HOME"/SCRIPTS) ]]
then
	printf " "
elif [[ "$PWD" == @("${HOME}/Desktop/correction/*"|"${HOME}/Desktop/correction") ]]
then
	printf " "
elif [[ -d .git ]]
then
	printf " "
elif [[ "$PWD" == @("$HOME"/Downloads/*|"$HOME/Downloads") ]]
then
	printf "󰉍 "
elif [[ "$PWD" == @(/media/*|"/media") ]]
then
	printf " "
elif [[ "$PWD" == @("$HOME"/Videos/*|"$HOME/Videos") ]]
then
	rintf " "
elif [[ "$PWD" == "/" ]]
then
	printf " "
elif [[ "$PWD" == @("${HOME}/Pictures/Screenshots"|"${HOME}"/Pictures/Screenshots/*) ]]
then
	printf " "
else
	echo " "
fi
}

update_prompt() {
	PS1=$'\n%F{blue}%K{blue}%F{white}%? %F{black}%K{green} '"$(work)"' %K{cyan}%F{green} %F{black}'"$(myplace)"' %~%F{cyan} %k%F{cyan}%f'$'%F{blue}\n└── %f%k'
}
precmd_functions+=(update_prompt)

