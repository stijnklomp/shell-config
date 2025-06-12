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


# Env variables
# Token variables

# System variables
set -xg APP_ENV dev

# NVM
set -xg NVM_DIR "$HOME/.nvm"


# Path
fish_add_path ~/bin

# Alises
# Basic aliases
alias la "ls -la"
alias vim "nvim"
alias kc "kubectl"
alias tf "terraform"

# AWS aliases
alias awslogin "aws sso login --profile "
alias awslocal "aws --endpoint-url=http://localhost:4566"

# Docker compose setup
set -g DOCKER_COMPOSE "docker-compose"
alias dcps "$DOCKER_COMPOSE ps"
alias dcdevdownup "$DOCKER_COMPOSE --profile dev down && $DOCKER_COMPOSE --profile dev up --build -d"
alias dcdevupdown "$DOCKER_COMPOSE --profile dev down && $DOCKER_COMPOSE --profile dev up --build -d"
alias dcdevdown "$DOCKER_COMPOSE --profile dev down"
alias dcdevup "$DOCKER_COMPOSE --profile dev up --build -d"
alias dclocaldownup "$DOCKER_COMPOSE --profile local down && $DOCKER_COMPOSE --profile local up --build -d"
alias dclocalupdown "$DOCKER_COMPOSE --profile local down && $DOCKER_COMPOSE --profile local up --build -d"
alias dclocaldown "$DOCKER_COMPOSE --profile local down"
alias dclocalup "$DOCKER_COMPOSE --profile local up --build -d"

# Git aliases
alias gita "git add -A"
alias gitc "git commit -m"
alias gitm "git merge"
function gitr
    if test -z "$argv[1]"
        echo "Usage: gitr <number>"
    else
        git rebase -ir HEAD~$argv[1]
    end
end
alias gitac "gita && gitc"
alias gitd "git diff"
alias gits "git status"
alias gitp "git pull --all"
alias gitds "git diff --staged"
alias gitrb "git branch -r --no-merged"
alias gitlb "git branch --no-merged"
alias gitbm "git merge -X theirs"
alias gitbr "git rebase -X ours"
