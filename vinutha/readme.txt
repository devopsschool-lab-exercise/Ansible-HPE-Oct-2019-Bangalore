mkdir vinutha
cd  vinutha
vi index.html
ansible localhost -m copy -a"src=index.html dest=/var/www/html/"
Task1:
ansible localhost -m group -a "name=deploy"
more /etc/group | grep deploy
Task 2:
ansible localhost -m user -a "name-deploy-user group=deploy shell=/bin/bash"
more /etc/group | grep deploy-user