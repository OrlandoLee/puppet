#!/bin/bash
 sudo yum update;
  sudo yum groupinstall "Development Tools";
  sudo yum install zlib-devel wget openssl-devel pcre pcre-devel make gcc gcc-c++ curl-devel;
  sudo yum install ruby 2.1.0
  sudo yum install rubygems 2.2.0
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