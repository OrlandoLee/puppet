class nginx{
$passenger_ruby = '/usr/local/rvm/gems/ruby-2.1.0/wrappers/ruby'
$passenger_root = '/usr/local/rvm/gems/ruby-2.1.0/gems/passenger-4.0.45'

file{'/opt/nginx/conf/nginx.conf':
  owner => 'root',
  group => 'root',
  mode => '644',
  content => template('nginx/nginx_config.erb'),
}

file { [ "/etc/rc.d",
         "/etc/rc.d/init.d/" ]:
    ensure => "directory",
}

file{'/etc/rc.d/init.d/nginx':
owner => 'root',
group => 'root',
mode => '755',
source => 'puppet:///modules/nginx/nginx.sh',
require => File["/etc/rc.d/init.d/"],
}

file {'/var/log/nginx':
ensure => 'directory',
}

file {'/var/log/nginx/nginx_error.log':
require => File['/var/log/nginx'],
}
}

