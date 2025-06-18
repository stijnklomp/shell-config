alias la="ls -la"

alias vim=nvim
alias kc=kubectl
alias tf=terraform

alias awslogin="aws sso login --profile "
alias awslocal="aws --endpoint-url=http://localhost:4566"

DOCKER_COMPOSE="docker-compose"
alias dcps="$DOCKER_COMPOSE ps"
alias dcdevdownup="$DOCKER_COMPOSE --profile dev down && $DOCKER_COMPOSE --profile dev up --build -d"
alias dcdevupdown="$DOCKER_COMPOSEdevdownup"
alias dcdevdown="$DOCKER_COMPOSE --profile dev down"
alias dcdevup="$DOCKER_COMPOSE --profile dev up --build -d"
alias dclocaldownup="$DOCKER_COMPOSE --profile local down && $DOCKER_COMPOSE --profile local up --build -d"
alias dclocalupdown="$DOCKER_COMPOSElocaldownup"
alias dclocaldown="$DOCKER_COMPOSE --profile local down"
alias dclocalup="$DOCKER_COMPOSE --profile local up --build -d"

alias gita="git add -A"
alias gitc="git commit -m"
alias gitm="git merge"
gitr() {
    if [ -z "$1" ]; then
        echo "Usage: gitr <number>"
    else
        git rebase -ir HEAD~$1
    fi
}
alias gitac="gita && gitc"
alias gitd="git diff"
alias gits="git status"
alias gitp="git pull --all"
alias gitds="git diff --staged"
alias gitrb="git branch -r --no-merged"
alias gitlb="git branch --no-merged"

jqt() {
    if [ -z "$1" ]; then
        echo "Usage: jqt <number>"
    else
        jq --arg limit "$1" '.. |= (if type == "string" then .[0:($limit|tonumber)] else . end)'
    fi
}
