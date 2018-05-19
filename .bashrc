# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.

# variables
export EDITOR='/usr/bin/vim'
export SHELL="/bin/bash"

# aliases
alias "[A"="alsamixer -D 0 -c 1"
alias alsamixer="alsamixer -D 0 -c 1"
alias hackmud_scripts="cd /home/chocorho/.config/hackmud/chozorho/scripts && ls -Ato"
alias hackscripts="cd /home/chocorho/.config/hackmud/chozorho/scripts && ls -Ato"
alias redsh="redshift -l 38:143 -t 2500:1900 &"
alias redsh-edit="vim ~/.config/lxsession/LXDE/autostart"
alias sensors="sensors -A coretemp-isa-0000"
alias smc="LD_LIBRARY_PATH=~/CEGUI-0.7.6-dyn-libs/ smc"
alias stfu="sudo shutdown -H now"
alias xterm="xterm -bg black -fg white -fa monospace -fs 14 -bc &"

# final scripts
source /etc/bash/bashrc
#/home/chocorho/shell-scripts/spite.sh

