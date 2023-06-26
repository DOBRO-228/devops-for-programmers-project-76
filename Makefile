install_roles:
	ansible-galaxy install -r requirements.yml
pull_images:
	ansible-playbook -i inventory.ini playbook.yml
deploy:
	ansible-playbook -i inventory.ini playbook_deploy.yml