alias ll='ls -alG'
alias mv='mv -i'
alias pstree='pstree -g 3'

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
       GIT_PROMPT_THEME=Default_NoExitState
       source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

if [ "Running" != $(docker-machine status default 2>/dev/null) ]; then
       docker-machine start default
fi
eval "$(docker-machine env default)"

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

export NODE_ENV=development

source ~/.git-completion.bash

complete -C aws_completer aws

