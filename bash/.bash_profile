
. /usr/local/opt/asdf/asdf.sh

. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash


# vault cert location
export VAULT_CACERT='/etc/pki/tls/certs/AvantCorporationCA.crt'

# vault address
export VAULT_ADDR='https://vault.ad.avant.com'

# enable linting for avant code base
export LINT_ENABLED=1

# scm puff: shortcuts for git https://github.com/mroth/scmpuff
#eval "$(scmpuff init -s)"

# aliases
# alias gb='git checkout $(git branch | fzf)' # easier git checkout

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
