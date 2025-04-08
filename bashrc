#=====================================================================
export LIBRARY_PATH=~/MY_LIBRARY:$LIBRARY_PATH
MAIL='hsacr@student.1337.ma'
export MAIL
source ~/.alias.sh
#source ~/.apps.sh
source ~/.alias.tmp.sh
usb="/media/hamza/"
export usb
function disk_usage() {
	df -h | awk 'NR==3 {print $5}'
}

function myplace() {
if [[ "$PWD" == "$HOME" ]]
then
	echo " "
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
	if [[ $(tput cols) -ge 60 && $(echo "$PWD" | wc -c) -le 50 ]]
	then
		printf "oneperson@fatalism"
	else
		printf "%s" $(date +%H:%M)
	fi
}



PS1='\n\[\e[34m\]\[\e[00m\]\[\e[00;44m\]$? \[\e[00m\]\[\e[01;32m\]\[\e[00m\]\[\e[01;42;30m\] $(work) \[\e[00m\]\[\e[01;32;46m\] \[\e[00m\]\[\e[01;46;30m\]$(myplace) \w \[\e[00m\]\[\e[01;36m\]\[\e[00m\]\n\[\e[01;34m\]└──\[\e[00m\] '
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

# some more ls aliases
#alias ll='ls -alF'
#alias la='ls -A'
#alias l='ls -CF'

alias ll='exa -al'
alias la='exa -a'
alias l='exa -CF'

export C_INCLUDE_PATH="/home/hsacr/MY_LIBRARY/:$C_INCLUDE_PATH"
export C_INCLUDE_PATH="/home/hsacr/MY_LIBRARY/include/:$C_INCLUDE_PATH"
export CPATH="/home/hsacr/MY_LIBRARY/:${CPATH}"
export PATH="$PATH:${HOME}/.cargo/bin/"
export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
export TERMINAL='kitty'

set -o vi
