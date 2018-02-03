# devbox
-- Warning: Don't run this on your machine unless you want to install my dev setup on it!

For bootstrapping and keeping my dev box up to date.

Kinda mostly working 0.0.1 of my devbox with things (I) like:
- IntelliJ CE
- zsh + oh-my-zsh
- git
- JDK8 + Scala
- Atom
- vagrant
- terminator console

## To run
```
sudo ./prepare.sh   # install ansible + git, needed for playbook
sudo ./run.sh       # run playbook
```

## Todos
- Unresolved, pops up sometimes:
TASK [add atom path to repo] ***************************************************
fatal: [default]: FAILED! => {"changed": false, "failed": true, "msg": "Failed to validate the SSL certificate for launchpad.net:443. Make sure your managed systems have a valid CA certificate installed.  If the website serving the url uses SNI you need python >= 2.7.9 on your managed machine.  You can use validate_certs=False if you do not need to confirm the server\\s identity but this is unsafe and not recommended Paths checked for this platform: /etc/ssl/certs, /etc/pki/ca-trust/extracted/pem, /etc/pki/tls/certs, /usr/share/ca-certificates/cacert.org, /etc/ansible"}
