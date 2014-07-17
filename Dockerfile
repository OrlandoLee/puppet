# Base image
# CentOS 6.5
FROM centos:latest

# Install dependencies
RUN yum update
RUN yum groupinstall -y "Development Tools"
RUN yum install -y zlib-devel wget openssl-devel pcre pcre-devel make gcc gcc-c++ curl-devel

RUN /bin/bash -c -l 'wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm'
RUN /bin/bash -c -l 'wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm'
RUN /bin/bash -c -l 'rpm -Uvh remi-release-6*.rpm epel-release-6*.rpm'

RUN /bin/bash -c -l '\curl -sSL https://get.rvm.io | bash'
RUN /bin/bash -c -l 'source /etc/profile.d/rvm.sh'
RUN /bin/bash -c -l 'rvm install 2.1.0'
RUN /bin/bash -c -l 'rvm use 2.1.0 --default'
RUN /bin/bash -c -l 'rvm install rubygems 2.2.0'
RUN yum install -y nodejs
RUN /bin/bash -c -l '/usr/local/rvm/rubies/ruby-2.1.0/bin/gem install bundler rails  --no-ri --no-rdoc'
RUN /bin/bash -c -l 'rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm'
RUN yum install -y puppet-server
RUN /bin/bash -c -l '/usr/local/rvm/rubies/ruby-2.1.0/bin/gem install puppet --no-ri --no-rdoc'
  hostname linode_japan_1

 sudo yum install mysql-server
 sudo yum install mysql-devel
 sudo /sbin/service mysqld start
 sudo /usr/bin/mysql_secure_installation
 sudo chkconfig mysqld on

 yum install ImageMagick-devel
 gem install passenger  --no-ri --no-rdoc;
 passenger-install-nginx-module
 mkdir /var/www/
 cd /var/www/
 git clone https://OrlandoLee:password@github.com/OrlandoLee/chuo.git
