# aliases
alias ll='ls -alG,'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias pstree='pstree -g 3'
alias python='python3'

# homebrew
export HOMEBREW_NO_ENV_HINTS=1

# prompt
source '/opt/homebrew/opt/zsh-git-prompt/zshrc.sh'
PROMPT='$(date -Iseconds) %~ $(git_super_status) %# '

# bin
export PATH=$PATH:/Users/nwalther/bin

# idea
export PATH=$PATH:/Applications/IntelliJ\ IDEA.app/Contents/MacOS/

# local machine configuration
source ~/.zshrc-local

# mise-en-place
eval "$(mise activate zsh)"

