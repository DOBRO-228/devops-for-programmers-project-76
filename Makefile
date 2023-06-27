install_roles:
	ansible-galaxy install -r requirements.yml
prepare:
	ansible-playbook -i inventory.ini playbook.yml -t prepare
deploy:
	ansible-playbook -i inventory.ini --ask-vault-pass playbook_deploy.yml -t deploy
update_vault:
	ansible-vault edit group_vars/webservers/vault.yml