Example:
mkdir kavitha
cd kavitha
vi index.html
ansible localhost -m copy -a "src=index.html dest=/var/www/html/"
Task 1:
ansible localhost -m group -a "name=deploy"

more /etc/group | grep deploy

Task 2:
ansible localhost -m user -a "name=deploy-user group=deploy shell=/bin/bash"

more /etc/passwd | grep deploy-user
cd /home 
ls -ltr
drwx------ . 2 deploy-user deploy 62 oct 7 16:36 deploy-user
cd deploy-user
pwd
/home/deploy-user

ansible db,web -i inventory -m yum -a "state=present name=httpd"
ansible db,web -i inventory -m yum -a "state=present name=httpd"
ansible db,web -i inventory -m service -a "state=started name=httpd"
ansible db,web -i inventory -m copy -a "src=index.html dest=/var/www/html/"
ansible db,web -i inventory -m file -a "state=touch dest=/var/www/html/rajesh.html"

playbook

---
- name: MY first playbook
  hosts: db
  tasks:
  - name: Create GROUP
    group: name=deploy
  - name: Create USER
    user: name=deploy-user group=deploy shell=/bin/bash	
  - name: Install the httpd apps
    yum: name=httpd
  - name: start the httpd service
    service: name=httpd state=started
  - name: create a dummy fle
    file: dest=/opt/test.txt state=touch
  - name: copy a file
    copy: dest=/var/www/html/ src="/root/kavitha/index.html"
...

ansible localhost -m group -a "name=deploy"

ansible localhost -m user -a "name=deploy-user group=deploy shell=/bin/bash"
