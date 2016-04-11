# devbox
*Te-he-he, making this from inside my devbox. Boxception*

This will be my ubuntu devbox ...
... fresh like freshly minted pillows.
Is that a thing? In hotels it sort of is, right?


## Todos
- check that everything works; we got a scala error, but then i was installed! (I think)
  And the manual install worked fine.
  Error was:
```{r, engine='bash', count_lines}
  ==> default: Running provisioner: ansible...
    default: Running ansible-playbook...
[DEPRECATION WARNING]: Instead of sudo/sudo_user, use become/become_user and
make sure become_method is 'sudo' (default). This feature will be removed in a
future release. Deprecation warnings can be disabled by setting
deprecation_warnings=False in ansible.cfg.
ERROR! the role 'ansible-oracle-scala' was not found in /Users/wittmma/Workspaces/cba/vagrant/ansible-vagrant/roles:/Users/wittmma/Workspaces/cba/vagrant/ansible-vagrant:/usr/local/etc/ansible/roles

The error appears to have been in '/Users/wittmma/Workspaces/cba/vagrant/ansible-vagrant/playbook.yml': line 15, column 7, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

    - role: ansible-oracle-java
    - role: ansible-oracle-scala
      ^ here

Ansible failed to complete successfully. Any error output should be
visible above. Please fix these errors and try again.
```

- definitely want to look at ways to source the stuff locally second time around,
  a lot of stuff gets deleted that could be reused, all the stuff that runs as
  part of ansible provisioning I presume
- probably move /Workspace to vagrant dir; and link vagrant dir to my local workspaces
  Except any binary-dependent projects, they wouldn't work.

- should work off works for all the roles so I can both either update them or not at
  my leasure
  
