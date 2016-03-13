#!/usr/bin/env bash

# install epel 7
sudo su
wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
rpm -ivh epel-release-7-5.noarch.rpm

# update centos and sort out R
sudo yum -y update
sudo yum -y install texlive
sudo yum -y install R

# install the R - server
wget https://download2.rstudio.org/rstudio-server-rhel-0.99.489-x86_64.rpm
sudo yum -y install --nogpgcheck rstudio-server-rhel-0.99.489-x86_64.rpm

# shiny server
sudo su - \
-c "R -e \"install.packages('shiny', repos='https://cran.rstudio.com/')\""

wget https://download3.rstudio.org/centos5.9/x86_64/shiny-server-1.4.1.759-rh5-x86_64.rpm
sudo yum -y install --nogpgcheck shiny-server-1.4.1.759-rh5-x86_64.rpm