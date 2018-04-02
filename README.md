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

## Vault
To run the playbook a file called `vault_pass.txt` containing the password for decrypting vault-encrypted variables must be present. I *did not* commit mine :P so it will fail.
A new user will need to encrypt their public / private ssh keys and then replace mine in the ssh role, or delete that role and hence remove the need for ssh keys (this may cause breakage with some of the repo pulling though). Also, the repos being pulled will need to be changed or removed, since the new user won't have ssh access to my repos (hopefully). The repos should be configurable via file, and the vault encrypted stuff should all be stored in ./config, with a script for regenerating them from provided input keys.

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
