# devbox
-- Warning: Don't run this on your machine unless you want to install my dev setup on it!

Needs a new-ish version of ansible, which Ubuntu 16.04 LTS doesn't come with. In those cases:
```
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```

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

## Overriding config
Add a `localConfig.yml` to `./configs`. Note: does not merge, so update whenever
config.yml changes. Ansible doesn't want to merge maps (hash_behavior does,
  but is global and not recommended).

## Skipping completed steps
Since the concept of a devbox involves tinkering, and re-running everything is slow
and annoying, the playbook uses the `install_if_missing` role to only run roles if:
- they haven't been run before (in which case there will not be a `${rolename}.success` file)
- they have been run, but there's been a version bump (so the version in
  `${rolename}.success` < `devbox.version` which is defined in `config.json`)

When a role is run using `install_if_missing`, then it will write the current
version to `${rolename}.success` after completion.

To toggle this behavior off, set `settings.skip_if_success` in `config.json` to false.

Call `clearSuccess.sh` to remove all success flag files (or delete the ones to
  rerun manually).

## Todos
- Unresolved, pops up sometimes:
TASK [add atom path to repo] ***************************************************
fatal: [default]: FAILED! => {"changed": false, "failed": true, "msg": "Failed to validate the SSL certificate for launchpad.net:443. Make sure your managed systems have a valid CA certificate installed.  If the website serving the url uses SNI you need python >= 2.7.9 on your managed machine.  You can use validate_certs=False if you do not need to confirm the server\\s identity but this is unsafe and not recommended Paths checked for this platform: /etc/ssl/certs, /etc/pki/ca-trust/extracted/pem, /etc/pki/tls/certs, /usr/share/ca-certificates/cacert.org, /etc/ansible"}

- Installing oh-my-zsh succeeds but returns a fail status I guess?
```
fatal: [localhost]: FAILED! => {
    "changed": true,
    "cmd": "sh -c \"$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)\"",
    "delta": "0:00:05.680227",
    "end": "2018-02-03 17:27:48.811151",
    "failed": true,
    "invocation": {
        "module_args": {
            "_raw_params": "sh -c \"$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)\"",
            "_uses_shell": true,
            "chdir": null,
            "creates": null,
            "executable": null,
            "removes": null,
            "warn": true
        }
    },
    "rc": 1,
    "start": "2018-02-03 17:27:43.130924",
    "stderr": "Cloning into '/home/damxam/.oh-my-zsh'...\nPassword: chsh: PAM: Authentication failure",
    "stderr_lines": [
        "Cloning into '/home/damxam/.oh-my-zsh'...",
        "Password: chsh: PAM: Authentication failure"
    ],
    "stdout": "Cloning Oh My Zsh...\nLooking for an existing zsh config...\nUsing the Oh My Zsh template file and adding it to ~/.zshrc\nTime to change your default shell to zsh!",
    "stdout_lines": [
        "Cloning Oh My Zsh...",
        "Looking for an existing zsh config...",
        "Using the Oh My Zsh template file and adding it to ~/.zshrc",
        "Time to change your default shell to zsh!"
    ]
}
	to retry, use: --limit @/home/damxam/devbox/playbook.retry
  ```
