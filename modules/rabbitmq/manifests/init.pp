class rabbitmq {
  package{"erlang":
    ensure => "present",
  }
  
  $version = "3.3.3"
  $url     = "http://www.rabbitmq.com/releases/rabbitmq-server/v${version}/rabbitmq-server-${version}-1.noarch.rpm"

  package{"rabbitmq-server":
    provider => "rpm",
    source   => $url,
    require => Package['erlang'],
  }
  
  service{"rabbitmq-server":
    ensure  => "running",
    require => Package['rabbitmq-server'],
  }

  exec {'install bunny gem':
  command => 'gem install bunny --version ">= 0.9.1"',
  path => ['/usr/local/rvm/rubies/ruby-2.1.2/bin/'],
  }
}
