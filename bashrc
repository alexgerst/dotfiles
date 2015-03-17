export PS1="\n\[\e[1;37m\]\342\224\214(\[\e[1;36m\]$(if [[ ${EUID} == 0 ]]; then echo '$bold${red}\u'; else echo '$bold${green}\u'; fi)\[\e[1;37m\])-(\[\e[1;31m\]\H\[\e[1;37m\])-(\[\e[1;33m\]\t \d\[\e[1;37m\])\n\342\224\224(\[\e[1;35m\]\w\[\e[1;37m\])-(\[\e[1;32m\]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b\[\e[1;37m\])\342\224\200> \[\e[0m\]"

alias ls='ls --color=auto'
alias lsx='ls -al --color=auto'

alias pls='sudo "$BASH" -c "$(history -p !!)"'

alias grep='grep --color=auto'
