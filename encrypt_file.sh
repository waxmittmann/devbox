#/bin/bash
cp $PWD/$1 $PWD/$1.vault
sudo ansible-vault --vault-password-file=vault_pass.txt encrypt $PWD/$1.vault
sudo chown damxam:damxam $PWD/$1.vault
