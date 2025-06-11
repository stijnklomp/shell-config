if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -U fish_greeting
eval "$(/opt/homebrew/bin/brew shellenv)"
set -gx VISUAL nvim
set -gx EDITOR nvim
fish_add_path -P /usr/local/bin /usr/local/sbin

abbr --add cs cd ~/Source
abbr --add t tldr
abbr --add v nvim
abbr --add v. nvim .
abbr --add vim nvim
abbr --add py python3
abbr --add epp export PYTHONPATH=`pwd`
abbr --add sva source venv/bin/activate.fish

#loadenv ~/.keys.env

fish_add_path ~/bin
