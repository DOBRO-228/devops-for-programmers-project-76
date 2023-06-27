install_roles:
	ansible-galaxy install -r requirements.yml
prepare:
	ansible-playbook -i inventory.ini --ask-vault-pass playbook.yml -t prepare
deploy:
	ansible-playbook -i inventory.ini --ask-vault-pass playbook.yml -t deploy
setup_datadog:
	ansible-playbook -i inventory.ini --ask-vault-pass playbook.yml -t datadog
update_vault:
	ansible-vault edit group_vars/webservers/vault.yml