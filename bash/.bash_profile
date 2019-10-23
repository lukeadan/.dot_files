
. /usr/local/opt/asdf/asdf.sh

. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash


# vault cert location
export VAULT_CACERT='/etc/pki/tls/certs/AvantCorporationCA.crt'

# vault address
export VAULT_ADDR='https://vault.ad.avant.com'

# scm puff: shortcuts for git https://github.com/mroth/scmpuff
eval "$(scmpuff init -s)"
