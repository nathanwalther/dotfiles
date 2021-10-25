# aliases
alias ll='ls -alG'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias pstree='pstree -g 3'

# completion
FPATH=/usr/local/share/zsh-completions:$FPATH
#autoload -Uz compinit
#compinit
#source <(kubectl completion zsh)

# java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# node
export NVM_DIR="$HOME/.nvm"
source '/usr/local/opt/nvm/nvm.sh'

# prompt
source '/usr/local/opt/zsh-git-prompt/zshrc.sh'
PROMPT='%~ $(git_super_status) %# '

# bin
export PATH=$PATH:/Users/nwalther/bin:/Users/nwalther/workspace/confluent-6.2.0/bin

# workspace
cd ~/workspace
