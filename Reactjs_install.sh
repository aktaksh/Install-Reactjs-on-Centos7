#!/bin/bash

#Install Reactjs on Centos7
#Sometimes you don't need documentation and just run this script , and get started.

#Below setup_13.x may get upgraded by time

#install repo
curl -sL https://rpm.nodesource.com/setup_13.x | bash -
yum install gcc-c++ make -y
yum groupinstall 'Development Tools' -y

#In case if repo fails
yum install https://rpm.nodesource.com/pub_13.x/el/7/x86_64/nodejs-13.11.0-1nodesource.x86_64.rpm -y && yum  update nodejs -y

#Yarn install
curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
yum install yarn -y

#Serve webhost : Like your apache some thing similar 
npm install -g serve

#Install ReactJS
npx create-react-app /home/reactjs/dev

#Run ReactJS Default Application
cd /home/reactjs/dev/ && npm run build
#run 
nohup serve -s build &>/dev/null &
