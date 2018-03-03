#/bin/bash
sudo echo $PWD
sudo cp /home/damxam/.ssh/id_rsa $PWD/id_rsa.vault
sudo ansible-vault --vault-password-file=vault_pass.txt encrypt $PWD/id_rsa.vault
#sudo chown -u damxam damxam:damxam /home/damxam/id_rsa.vault

sudo cp /home/damxam/.ssh/id_rsa.pub $PWD/id_rsa.pub.vault
sudo ansible-vault --vault-password-file=vault_pass.txt encrypt $PWD/id_rsa.pub.vault
#sudo chown damxam:damxam $PWD/id_rsa.pub.vault

sudo chown damxam:damxam -R $PWD
