  #!/bin/bash
  #this script allow to create users in the linux system
  #Take User input for username and Password
  read -p "Please Enter the Username : " USER_NAME
  read -s -p "Please Enter the Password : " PASSWORD
  useradd ${USER_NAME} -p ${PASSWORD}
  echo ${PASSWORD}
  echo
  echo "${USER_NAME} Created Successfully !!!!!!"
