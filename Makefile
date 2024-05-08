run_ansible:
	@ ansible-playbook -i hosts k3s_install.yaml
	@ ansible-playbook -i hosts k3s_mern_deploy.yaml
	@ ansible-playbook -i hosts config_nginx_lb.yaml
	@ ansible-playbook -i hosts config_bastion.yaml