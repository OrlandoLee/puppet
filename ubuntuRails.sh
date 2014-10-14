!#/bin/bash
#command for installing:


sudo apt-get update
sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

#ruby
wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p451.tar.gz
tar -xvzf ruby-2.0.0-p451.tar.gz

#I patched the file ext/readline/readline.c replacing line 1886:
#rl_pre_input_hook = (Function *)readline_pre_input_hook;
#With
#rl_pre_input_hook = (rl_hook_func_t *)readline_pre_input_hook;

cd ruby-2.0.0-p451 && ./configure && make && sudo make install
ruby -v
#rails
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get -y update
sudo apt-get -y install nodejs
gem install rails -v 4.0.1
rails -v
sudo apt-get -y install mysql-server mysql-client libmysqlclient-dev
sudo apt-get -y install nginx

#mongo
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
apt-get -y update
apt-get -y install mongodb-10gen
sudo bash ./mongo_install.bash


#java and elasticsearch
cd ~
sudo apt-get update
sudo apt-get install openjdk-7-jre-headless -y
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.2.tar.gz
tar -xvzf elasticsearch-1.3.2.tar.gz
cd elasticsearch-1.3.2 && bin/elasticsearch -d
curl localhost:9200

#memcached
apt-get install libevent-dev -y 
apt-get install memcached

#redis
apt-get install redis-server
#redis-server /etc/redis/redis.conf


#sphinx --mysql
sudo apt-get install sphinxsearch
