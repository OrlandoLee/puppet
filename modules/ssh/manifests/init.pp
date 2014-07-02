# Manage the SSH service
       class ssh {
         service { 'sshd':
           ensure => running,
}
    file { '/etc/ssh/sshd_config':
  		   mode => '600',
           source => 'puppet:///modules/ssh/sshd_config',
           notify => Service['sshd'],
		    owner  => 'root',
		    group  => 'root',
	 }
}