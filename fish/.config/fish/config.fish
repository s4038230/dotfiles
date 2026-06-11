source /usr/share/cachyos-fish-config/cachyos-config.fish

set -gx EDITOR nvim

# # Everforest-dark-medium theme for nmtui
# set -gx NEWT_COLORS ""
# root=,#232A2E
# window=#D3C6AA,#2D353B
# border=#9DA9A0,#2D353B
# title=#A7C080,#2D353B
# textbox=#D3C6AA,#2D353B
# listbox=#D3C6AA,#2D353B
# actlistbox=#2D353B,#A7C080
# checkbox=#A7C080,#2D353B
# actcheckbox=#2D353B,#A7C080
# button=#2D353B,#DBBC7F
# actbutton=#2D353B,#DBBC7F
# compactbutton=#D3C6AA,#2D353B

# set -gx COLORTERM truecolor
# set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

#Keybinding
alias vi="nvim"
alias n="nvim"
alias l="eza --group-directories-first --icons"
alias cat="bat -p"

alias c="clear"
alias g="cd"
alias :q="exit"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."
alias ..........="cd ../../../../../../../../.."
alias ...........="cd ../../../../../../../../../.."

starship init fish | source
zoxide init fish | source
mise activate fish | source

#Keybinding for specific destination
alias gw="cd ~/workspace/"
alias gs="cd ~/.config/"
alias gd="cd ~/Downloads/"
