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


