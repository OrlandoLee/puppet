class user{
user { 'orlando':
           ensure     => present,
           home       => '/home/orlando',
           managehome => true,
}

ssh_authorized_key { 'orlando_ssh':
        user => 'orlando',
        type => 'rsa',
#############################################################
        key  => 'AAAAB3NzaC1yc2EAAAABIwAAAIEA3ATqENg+GWAC
    a2BzeqTdGnJhNoBer8x6pfWkzNzeM8Zx7/2Tf2pl7kHdbsiTXEUaw
    qzXZQtZzt/j3Oya+PZjcRpWNRzprSmd2UxEEPTqDw9LqY5S2B8og/
    NyzWaIYPsKoatcgC7VgYHplcTbzEhGu8BsoEVBGYu3IRy5RkAcZik=',
}

user { 'adep':
           ensure     => present,
           home       => '/home/adep',
           managehome => true,
}

ssh_authorized_key { 'adep_ssh':
        user => 'adep',
        type => 'rsa',
####################################################
        key  => 'AAAAB3NzaC1yc2EAAAABIwAAAIEA3ATqENg+GWAC
    a2BzeqTdGnJhNoBer8x6pfWkzNzeM8Zx7/2Tf2pl7kHdbsiTXEUaw
    qzXZQtZzt/j3Oya+PZjcRpWNRzprSmd2UxEEPTqDw9LqY5S2B8og/
    NyzWaIYPsKoatcgC7VgYHplcTbzEhGu8BsoEVBGYu3IRy5RkAcZik=',
}

}