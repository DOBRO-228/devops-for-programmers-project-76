install_roles:
	ansible-galaxy install -r requirements.yml
pull_images:
	ansible-playbook -i inventory.ini playbook.yml
deploy:
	ansible-playbook -i inventory.ini --ask-vault-pass playbook_deploy.yml
update_vault:
	ansible-vault edit group_vars/webservers/vault.yml