#! /bin/bash
#checking for root permission

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#checking for update of package
 
apt-get update

apt-get install git

if [ $? == 0 ]; 
then
 echo "git instaltion successful"
else
 echo "git already installed"
fi


#taking username and email
echo "Provide your github Username"
read username
echo "Provide your github Email"
read emailid

echo $username
echo $emailid

#setting global username and email 
git config --global user.name "$username"
git config --global user.email "$emailid"

if [ $? == 0 ]; 
then
 echo "git configured with username as $username email as $emailid"
else
 echo "git not able to configure"
fi

#checking content by seeing config file
#git config --list
