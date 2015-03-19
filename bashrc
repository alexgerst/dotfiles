# Define colors

nc='\e[0m'
black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lgray='\e[0;37m'
dgray='\e[1;30m'
lblue='\e[1;34m'
lgreen='\e[1;32m'
lcyan='\e[1;36m'
lred='\e[1;31m'
lpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'

# Configure prompt

export PS1="\n${nc}\342\224\214(${lcyan}\u${nc})-(${lred}\H${nc})-(${yellow}\t \d${nc})\n\342\224\224(${lpurple}\w${nc})-(${lgreen}\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b${nc})\342\224\200> ${nc}"

# Configure aliases

alias ls='ls --color=auto'
alias lsx='ls -al --color=auto'
alias pls='sudo "$BASH" -c "$(history -p !!)"'
alias grep='grep --color=auto'

# Welcome message

echo -e "\nWelcome to BASH!\n"
curl http://www.reddit.com/r/latvianjokes/hot/.json?limit=1 2>/dev/null | grep -Po "\"selftext\": \K(\"[^\"]+\")" | tail -n1 | fold -sw 70
