class show{
$path = '/'
exec{'show files':
  command => template('show/something.erb'),
}
}

