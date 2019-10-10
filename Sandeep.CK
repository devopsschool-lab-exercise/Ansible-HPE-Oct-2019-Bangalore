---
- hosts: webserver
  tasks:
  - name: Install httpd
    yum:
      name: httpd
      state: present
  - name: httpd service started and enabled
    service:
      name: httpd
      state: started
      enabled: yes
  - name: create a deploy group
    group:
      name: deploy
      state: present
  - name: create a deploy-user user
    user:
      name: deploy-user
      state: present
      group: deploy
      shell: /bin/bash
      generate_ssh_key: yes

- hosts: controller
  tasks:
   - name: Install wget,git
     yum:
       name: wget,git
       state: present
  tasks:
   - name: Copy index.html to cks.html
     copy:
       src: /root/index-controller.html
       dest: /var/www/html/cks.html
...
