. ~/.alias.sh
. ~/.var.sh
. ~/.alias.tmp.sh

function disk_usage() {
	df -h ~
}

function myplace() {
if [[ "$PWD" == "$HOME" ]]
then
	echo " "
elif [[ -d .git ]]
then
	printf " "
elif [[ "$PWD" == @("$HOME"/Desktop|"$HOME"/Desktop/*) ]]
then
	printf "󰧨 "
elif [[ "$PWD" == @("$HOME"/lib|"$HOME"/lib/*) ]]
then
	printf " "
elif [[ "$PWD" == @("$HOME"/Music|"$HOME"/Music/*) ]]
then
	printf "󰝚 "
elif [[ "$PWD" == @("$HOME"/COMMON_CORE|"$HOME"/COMMON_CORE/*) ]]
then
	printf " "
elif [[ "${PWD}" == @("$HOME"/telegram|"$HOME"/telegram/*) ]]
then
	printf " "
elif [[ "$PWD" == @("$HOME"/SCRIPTS/*|"$HOME"/SCRIPTS) ]]
then
	printf " "
elif [[ "$PWD" == @("${HOME}/Desktop/correction/*"|"${HOME}/Desktop/correction") ]]
then
	printf " "
elif [[ "$PWD" == @("$HOME"/Downloads/*|"$HOME/Downloads") ]]
then
	printf "󰉍 "
elif [[ "$PWD" == @(/media/*|"/media") ]]
then
	printf " "
elif [[ "$PWD" == @("$HOME"/Videos/*|"$HOME/Videos") ]]
then
	printf " "
elif [[ "$PWD" == "/" ]]
then
	printf " "
elif [[ "$PWD" == @("${HOME}/Pictures"|"${HOME}"/Pictures/*) ]]
then
	printf " "
elif [[ "$PWD" == @("${HOME}/Documents"|"${HOME}"/Documents/*) ]]
then
	printf "󱪝 "
else
	echo " "
fi
}

work() {
	if [[ $(tput cols) -ge 60 && "${#PWD}" -le 50 ]]
	then
		printf "oneperson"
	else
		printf "%s" $(date +%H:%M)
	fi
}

PS1='\n\[\e[34m\]\[\e[00m\]\[\e[00;44m\]$? \[\e[00m\]\[\e[01;32m\]\[\e[00m\]\[\e[01;42;30m\] $(work) \[\e[00m\]\[\e[01;32;46m\] \[\e[00m\]\[\e[01;46;30m\]$(myplace) \w \[\e[00m\]\[\e[01;36m\] \[\e[01;34m\]$(git branch 2> /dev/null| grep \*)\[\e[00m\]\n\[\e[01;34m\]└──\[\e[00m\] '

if which bat 1> /dev/null;
then
	export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
fi

set -o vi
