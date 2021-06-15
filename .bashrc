# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Characters for PS* customization:
# \d		- current date
# \e		- escape
# \h		- hostname
# \n		- newline
# \t		- current time 24H: HH:MM:SS
# \T		- current time 12H: HH:MM:SS
# \@		- current time 12H: HH:MM:SS am/pm
# \u		- current username
# \w		- path to current directory
# \W		- name of current directory
# \e[00m	- default color
# \e[30m	- black
# \e[31m	- red
# \e[32m	- green
# \e[33m	- yellow
# \e[34m	- blue
# \e[35m	- magenta
# \e[36m	- cyan
# \e[37m	- white
# \[		- start of non printing sequence
# \]		- end of non printing sequence

PS1='\[\e[36m\][\[\e[33m\]\u\[\e[00m\]@\[\e[36m\]\h \[\e[37m\]\w\[\e[00m\]\[\e[36m\]]\[\e[32m\]\$ \[\e[00m\]'

set -o vi

export HISTCONTROL=ignoreboth:erasedups

