
### Mint:
```
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100000
HISTFILESIZE=100000
export PATH=$PATH:/home/soders/.spicetify
export PATH=$PATH:~/bin
export PATH=$PATH:~/scripts
export PATH=/home/soders/Scripts:$PATH
export PATH=$PATH:/home/soders/Scripts
clear
fastfetch
PROMPT_COMMAND='PS1_CMD1=$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"')'
if [[ -n "$SSH_CLIENT" ]]; then ssh_message=" ssh"; fi
PS1='\[\e[92;1m\]\T\[\e[0m\] \[\e[92;1m\]\d\[\e[0m\] \[\e[1m\]|\[\e[0m\]\[\e[91;1m\]${ssh_message}\[\e[0m\] \[\e[1m\]\u\[\e[92m\]\w\[\e[39m\]:\[\e[0m\] \[\e]0;$PS1_CMD1\a\]'
```
### Peppermint:
```
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100
HISTFILESIZE=100
export PATH=$PATH:~/.local/bin
export PATH=/home/soders/Scripts:$PATH
export PATH=$PATH:/home/soders/Scripts
clear
fastfetch
PROMPT_COMMAND='PS1_CMD1=$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"')'
if [[ -n "$SSH_CLIENT" ]]; then ssh_message=" ssh"; fi
PS1='\[\e[91;1m\]\T\[\e[0m\] \[\e[91;1m\]\d\[\e[0m\] \[\e[1m\]|\[\e[0m\]\[\e[91;1m\]${ssh_message}\[\e[0m\] \[\e[1m\]\u\[\e[91m\]\w\[\e[39m\]:\[\e[0m\] \[\e]0;$PS1_CMD1\a\]'
```
