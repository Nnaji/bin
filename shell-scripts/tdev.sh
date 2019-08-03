#!/usr/bin/env bash
#############################################################################
#							    		    #
#    @AUTHUR: Kingsley Nnaji				    		    #
#    @EMAIL: <kingsley.nnaji@gmail.com>			    		    #
#    @LICENCE: MIT					    		    #
#							    		    #
#							    		    #
#############################################################################
declare -a SESSIONS
declare -a WINDOWS
WINDOWS=(VIM JS)
SESSIONS=(DEV WORK)
EDEV=`echo ${SESSIONS[0]}`
EWORK=`echo ${SESSIONS[1]}`
WVIM=`echo ${WINDOWS[0]}`
WJS=`echo ${WINDOWS[1]}`
tmux new-session -s $EDEV -d -n JS -c $HOME  
tmux  send-keys -t JS $WVIM C-m  
tmux  split-window -t $WJS -v -p 10  
tmux  send-keys -t $WJS 'clear && figlet Javascript' 'Enter'
tmux  split-window -t $WJS -h -p 50  
tmux  send-keys -t $WJS 'clear && figlet Javascript' 'Enter'
tmux  new-window -t $EDEV -n CLI-ZSH  
tmux  send-keys -t CLI-ZSH 'clear && figlet CLI-ZSH' 'Enter'
tmux  split-window -t CLI-ZSH -v -p 10  
tmux  send-keys -t CLI-ZSH 'clear && figlet CLI-ZSH' 'Enter'
tmux  select-window -t JS  
tmux  new-session -s $EWORK -d -n TS -c $HOME   
tmux  send-keys -t TS $WVIM 'Enter'  
tmux  split-window -t TS -v -p 10  
tmux  send-keys -t TS 'clear && figlet TS' 'Enter'
tmux  split-window -t TS -h -p 50  
tmux  send-keys -t TS 'clear && figlet TS' 'Enter'
tmux  new-window -t $EWORK -n ZSH  
tmux  send-keys -t ZSH 'clear && figlet ZSH' 'Enter'
tmux  split-window -t ZSH -v -p 10  
tmux  send-keys -t ZSH 'clear && figlet ZSH' 'Enter'
tmux  select-window -t TS  
tmux a -t $EDEV

