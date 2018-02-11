#/bin/bash
ansible-vault --vault-password-file=vault_pass.txt encrypt_string "$1"
