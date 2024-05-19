# Requirements
Make sure that you have the following installed:
- [node](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04) 
- npm 
- [MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/) and start the mongodb service with `sudo service mongod start`
- Vagrant
- Ansible
## Steps followed
1. Installed ansible and vagrant to the root directory
2. Created Vagrantfile and specified theubuntu image to be uses in Virtual box using this command  (config.vm.box = "ubuntu/jammy64")
3. Created roles directory and liated all the tasks required to run the application using the command ansible-galaxy init
4. Created playbook.yml file and listed all the roles that correspons to the tasks in the roles directory.
