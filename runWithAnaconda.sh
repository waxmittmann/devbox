sudo ansible-playbook --vault-password-file vault_pass.txt -i localhost, -c local playbook.yml -vvvv --extra-vars "{install_anaconda: true}"
