ansible localhost -m copy -a"src=index.html dest=/var/www/html/"
Task1:
ansible localhost -m group -a "name=deploy"
more /etc/group | grep deploy
Task 2:
ansible localhost -m user -a "name-deploy-user group=deploy shell=/bin/bash"
more /etc/group | grep deploy-user

Task-3:

ansible localhost -m yum -a "state=present name=httpd"
which httpd
/sbin/httpd

task4:

ansible localhost -m service -a "state=started name=httpd"
ps -eaf | grep httpd


Task5:
mkdir vinutha/touch index.html
cd  vinutha
vi index.html
http://10.0.2.15:80

Task 6:
ansible localhost -m copy -a "src=Second.html dest=/var/www/html/"
ansible localhost -m file -a "state=touch dest=/var/www/html/second.html"
http://10.0.2.15:80

https://www.codeproject.com/Tips/870858/Reset-Restore-IIS-Settings-to-its-Default-in-Windo


Task7: 

ansible localhost -m git -a "repo=https://github.com/scmgalaxy/ansible-role-template dest=/root/git"


ansible localhost -m reboot

ansible localhost -m file -a "state=touch dest=/opt/devopsschool.txt state=absent"




Write a Ansible Playbook to create a group called “deploy”

vi inventory

[deploy]

[deploy]

10.76.82.140


ansible deploy -i inventory -m yum -a "state=present name=httpd"
ansible deploy -i inventory -m yum -a "state=present name=httpd"
ansible deploy -i inventory -m service -a "state=started name=httpd"
ansible deploy -i inventory -m copy -a "src=index.html dest=/var/www/html/"
ansible deploy -i inventory -m file -a "state=touch dest=/var/www/html/vinu.html"


Write a Ansible Playbook to create a user called “deploy-user” which is part of group called “deploy” and with /bin/bash shell

vi inventory
[deploy]

10.76.82.140

[deploy-user]

10.76.82.140

ansible deploy,deploy-user -i inventory -m yum -a "state=present name=httpd"
ansible deploy,deploy-user -i inventory -m yum -a "state=present name=httpd"
ansible deploy,deploy-user -i inventory -m service -a "state=started name=httpd"
ansible deploy,deploy-user -i inventory -m copy -a "src=index.html dest=/var/www/html/"
ansible deploy,deploy-user -i inventory -m file -a "state=touch dest=/var/www/html/vinu.html"


Write a Ansible Playbook to install package named “httpd” in RHEL/centos.
ansible deploy,deploy-user -i inventory -m  -m yum -a "state=present name=httpd"

Write a Ansible Playbook to start and enable the service named “httpd”

ansible deploy,deploy-user -i inventory -m service -a "state=started name=httpd"


Write a Ansible Playbook to create a file called “index.html” in /var/www/html with some dummy html contents.
ansible deploy,deploy-user -i inventory -m copy -a "src=index.html dest=/var/www/html/"

Write a Ansible Playbook to reboot a self machine.
ansible deploy,deploy-user -i inventory -m reboot 

Write a Ansible Playbook to install a package called “git”, “wget”.

ansible deploy,deploy-user -i inventory -m git -a "state=present name=httpd"