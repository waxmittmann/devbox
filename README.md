# devbox
Kinda mostly working 0.0.1 of my devbox with things (I) like:
- IntelliJ CE
- zsh + oh-my-zsh
- git
- JDK8 + Scala
- Atom
- vagrant
- tilda (terminal replacement)
- mysql

## Todos
### Feature-ish todos:
- copy in my custom zsh profile (repo here: https://github.com/waxmittmann/my-zsh-profile.git)

### Implementation-detail-ish todos:
- definitely want to look at ways to source the stuff locally second time around, a lot of stuff gets deleted that could be reused, all the stuff that runs as part of ansible provisioning I presume

- probably move /Workspace to vagrant dir; and link vagrant dir to my local workspaces.
  Except any binary-dependent projects, they wouldn't work.

### Error-ish todos:
- Workspaces dir creation doesn't work (guessing the ansible user is special root user?)

- A bunch of stuff fails because of java 6 deps, so I'm manually cludging those at the beginning but I don't love that.

- Unresolved, pops up sometimes:
TASK [add atom path to repo] ***************************************************
fatal: [default]: FAILED! => {"changed": false, "failed": true, "msg": "Failed to validate the SSL certificate for launchpad.net:443. Make sure your managed systems have a valid CA certificate installed.  If the website serving the url uses SNI you need python >= 2.7.9 on your managed machine.  You can use validate_certs=False if you do not need to confirm the server\\s identity but this is unsafe and not recommended Paths checked for this platform: /etc/ssl/certs, /etc/pki/ca-trust/extracted/pem, /etc/pki/tls/certs, /usr/share/ca-certificates/cacert.org, /etc/ansible"}
