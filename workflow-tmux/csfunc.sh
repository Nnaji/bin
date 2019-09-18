#!/usr/bin/env bash

#  @AUTHUR: Kingsley Nnaji <kingsley.nnaji@gmail.com>
#  @LICENCE: MIT
#  Creation Date: 18.09.2019

	WORK="WORK"
	CLI="CLI"
	IDE="IDE"  

# ====================================================================================================
# Bash function ctsessions creates a tmux session in the current directory and appends
# the directory name to WORK variable to create a session new session name to avoid duplicate sessions
# ====================================================================================================
function ctsessions()
{
	if [[ "$#" -eq 1 ]]; then
		tmux new -s $WORK-`awk 'BEGIN {print toupper(ARGV[1])}' "$1"` -n $WORK-$CLI \; \
	 	send -t 0 'clear && figlet CLI' 'Enter' \; \
	       	new-window -n "$WORK-$IDE" \; \
		splitw -v -p 15 \; \
		selectp -t 1 \; \
	 	send -t 1 'clear && figlet CLI' 'Enter' \; \
		splitw -h -p 50 \; \
	 	send -t 2 'clear && figlet CLI' 'Enter' 
	else
		tmux new -s $WORK-`basename $PWD` -n $WORK-$CLI \; \
	 	send -t 0 'clear && figlet CLI' 'Enter' \; \
	       	new-window -n "$WORK-$IDE" \; \
		splitw -v -p 15 \; \
		selectp -t 1 \; \
	 	send -t 1 'clear && figlet CLI' 'Enter' \; \
		splitw -h -p 50 \; \
	 	send -t 2 'clear && figlet CLI' 'Enter' 
	fi
}

ctsessions $1
