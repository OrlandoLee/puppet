#!/bin/bash
 sudo yum update;
  sudo yum groupinstall "Development Tools";
  sudo yum install zlib-devel wget openssl-devel pcre pcre-devel make gcc gcc-c++ curl-devel;

  wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
  wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
  sudo rpm -Uvh remi-release-6*.rpm epel-release-6*.rpm
  
  \curl -sSL https://get.rvm.io | bash;
  source /etc/profile.d/rvm.sh;
  rvm install 2.1.0;
  rvm use 2.1.0 --default
  rvm install rubygems 2.2.0
  yum install nodejs
  gem install bundler rails
  sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm;
  sudo yum install puppet-server;
  sudo gem install puppet --no-ri --no-rdoc;
  hostname linode_japan_1

 sudo yum install mysql-server
 sudo yum install mysql-devel
 sudo /sbin/service mysqld start
 sudo /usr/bin/mysql_secure_installation
 sudo chkconfig mysqld on

 gem install passenger
 passenger-install-nginx-module
 mkdir /var/www/
 cd /var/www/
 git clone https://OrlandoLee:Orlando620517@github.com/OrlandoLee/chuo.git