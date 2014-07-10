class directory{
file { ["/var/","/var/www/","/var/www/chuo/","/var/www/chuo/public/" ]:
    ensure => "directory",
}

file {"/var/www/chuo/public/uploads":
	ensure => "directory",
	mode => '7777',
}

}