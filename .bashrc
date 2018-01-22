alias ll='ls -alG'
alias mv='mv -i'
alias pstree='pstree -g 3'

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
       GIT_PROMPT_THEME=Default_NoExitState
       source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export NODE_ENV=development

complete -C aws_completer aws

