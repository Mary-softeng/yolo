Tasks To Run The Yolo App
=========

This roles directory contains all the tasks 
that will run the application. each task is created using the **ansible-galaxy** init <name-of-the-task> command.

List of Tasks
------------

1. update-packages - This task is responsible to update all the packeges of the os and it uses apt command. The structure of the task is as follows:
  
  - name: Update package lists
  apt:
    update_cache: yes
    state: present

2. install-docker-engine - It ensures the installation of docker engine in the virtual box.

     - name: Install Docker Engine
        become: true
        apt:
            name: docker.io  
            state: present
    
3. start-docker-service- It starts the docker deamon in the virtual box.

    - name: Start Docker service
        become: true
        systemd:
            name: docker
            state: started
            enabled: yes

4. install-pip3 - It is a requiremnt for installing docker client.

      - name: Install pip3 (package manager for Python 3)
        apt:
            name: python3-pip
            state: present

5. install-docker-client - It install the docker version for python which will be used to run docker compose.

        - name: Install Python Docker client 
            pip:
                name: docker
                state: present


6. install-docker-compose - it installs docker compose dependenses which will be used to run docker-compose.yml that contain docker images for the yolo application.

   - name: Install Docker Compose
     pip:
        name: docker-compose
        state: present

7. mondo-db - it installs the mongo db that will be intergrated with backend of the project to store the ecommerce products.

    - name: Install mongoDB
      apt: 
        name: mongodb-org
        state: present
        update_cache: yes 

        - name: Ensure mongodb is running and and enabled to start automatically on reboots
        service: 
            name: mongod 
            enabled: yes
            state: started
    
8. git-clone-yolo-app - It clones the yollo application from the github so that it can be run locally.
9. deploy-yolo-app - It successifully runs the yolo application using **vagrant up** command

    - name: Deploy YOLO application with Docker Compose
        community.docker.docker_compose:
            project_src: "{{ pathtoyolo }}"
            state: present

Roles in the playbook.yml
--------------

roles:
    - update-packages

    - install-docker-engine

    - start-docker-service

    - Install-pip3

    - Install-Docker-client

    - mongodb

    - install-docker-compose

    - git-clone-repo

    - deploy-yolo-app

Steps
------------

1. Installed ansible and vagrant to the root directory

2. Created Vagrantfile and specified the ubuntu image to be uses in Virtual box using this command  (config.vm.box = "ubuntu/jammy64")

3. Created roles directory and liated all the tasks required to run the application using the command ansible-galaxy init

4. Created playbook.yml file and listed all the roles that corresponds to the tasks in the roles directory.

Playbook.yml
----------------

---
- hosts: all
  become: true

  vars_files:
    - vars.yml

  roles:
    - update-packages
    - install-docker-engine
    - start-docker-service
    - Install-pip3
    - Install-Docker-client
    - mongodb
    - install-docker-compose
    - git-clone-repo
    - deploy-yolo-app

