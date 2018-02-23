  489  gpsup origin vault
  490  vi .ssh/config
  491  ls
  492  vi .git/config
  493  gpsup origin vault
  494  ls
  495  openssl pkey -in ~/.ssh/id_rsa -pubout ~/.ssh/id_rsa.pub pem | sha256sum
  496  ls
  497* cd ~/.ssh
  498* ls
  499* man ssh-keygen
  500* ls
  501* cp id_rsa.pub id_rsa.pub.bck
  502* ssh-keygen -y -f id_rsa id_rsa_pub
  503* ssh-keygen -y -f id_rsa
  504* ls
  505* chmod 600 id_rsa
  506* chmod 600 id_rsa.pub
  507  gpsup origin vault
  508* ssh-keygen -y -f id_rsa
  509* ssh-keygen -y -f id_rsa > out.pub
  510* ls
  511* cmp out.pub id_rsa.pub
  512* cat out.pub
  513* cat id_rsa.pub
  514* ls -la
  515* ls
  516* ssh -T git@github.com
  517* ls
  518* ssh-add
  519* ssh-add ~/.ssh/id_rsa
  520  gpsup origin vault
  521* ssh -T git@github.com
  522* ssh-add -l
  523* sudo apt-get autoremove gnome-keyring
  524* ssh-add -D
  525  gpsup origin vault
  526* ssh-add
  527  gpsup origin vault

This broke gnome :_(

https://askubuntu.com/questions/762541/ubuntu-16-04-ssh-sign-and-send-pubkey-signing-failed-agent-refused-operation

Then did
https://wiki.archlinux.org/index.php/GNOME/Keyring#Disable_keyring_daemon_components
