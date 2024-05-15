# Configure EC2, Install Kubernetes (K3s) & Deploy MERN App using Ansible


### Step 1: Clone the repository in the local machine
```
git clone https://github.com/bjnandi/ansible-k3s-nginx-lb.git
```

### Step 2: Create a “linux.pem” file in the .ssh folder for the SSH key
```
nano ~/.ssh/linux.pem
```

### Step 3: Set the permission of the “linux.pem” file
```
chmod 400 ~/.ssh/linux.pem
```

### Step 4: Now set permission for the directory because the Dev Container mounts the directory with default permission for everyone
```
chmod 755 /workspaces/ansible-k3s-nginx-lb
```

### Step 5: Now update the IP address with our AWS EC2 IP address
- In the “hosts” file:
- bastion (Public IP)
- k3s_nodes, additional_agent_nodes & nginx_lb (Private IP)
- nginx_lb(Private IP)
- For ProxyCommand (Public IP)


###  Step 6: The Ansible configuration is ready for run

1. To run all configurations in one comment using Makefile:
```
make run_ansible
```
2. If you want run them one by one:
```
 ansible-playbook -i hosts k3s_install.yaml

 ansible-playbook -i hosts k3s_mern_deploy.yaml

 ansible-playbook -i hosts config_nginx_lb.yaml

 ansible-playbook -i hosts config_bastion.yaml
```

### Learn More Here
[Build an End-to-End CI/CD Pipeline for a MERN App in Kubernetes with Terraform using GitHub Actions & Ansible](https://medium.com/aws-in-plain-english/build-an-end-to-end-ci-cd-pipeline-for-mern-app-terraform-using-github-actions-with-ansible-d7686ccc8db1)

Happy coding! 💻✨
