---
 - hosts: db
   sudo: yes

#   vars:
#     age: 27
#     myname: omkar vishwakarma
#     compname: VA

#   vars_files:
#   - "vars.yml"

   vars_prompt:
     - name: "age"
       private: no
       prompt: "Enter your age"
     - name: "myname"
       private: no
       prompt: "Enter your name"
     - name: "compname"
       private: no
       prompt: "Enter your company name"

   tasks:
   - name: "Using Debug module"
     debug:
       msg: "Name - {{ myname }} Age - {{ age }} CompanyName: {{ compname }} HOSTNAME - {{ inventory_hostname }}"
   - name: "Using register"
     shell: "find *.txt"
     args:
       chdir: /opt
     register: find_output
   - debug:
       var: find_output