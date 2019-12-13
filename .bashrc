alias ll='ls -alG'
alias mv='mv -i'
alias pstree='pstree -g 3'
alias kc='kubectl'

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
       GIT_PROMPT_THEME=Default_NoExitState
       source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

eval "$(jenv init -)"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

export NODE_ENV=development

export GROOVY_HOME=/usr/local/opt/groovy/libexec

export PATH=$PATH:/Users/nwalther/bin:/Users/nwalther/workspace/confluent/bin

export PKG_CONFIG_PATH=/usr/local/opt/libffi/lib/pkgconfig

complete -C aws_completer aws

source <(kubectl completion bash)

