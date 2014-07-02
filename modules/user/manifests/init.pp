class user{
user { 'orlando':
           ensure     => present,
           home       => '/home/orlando',
           managehome => true,
}

ssh_authorized_key { 'orlando_ssh':
        user => 'orlando',
        type => 'rsa',
        key =>'AAAAB3NzaC1yc2EAAAADAQABAAABAQCXqPn7kFT/ULm51OJLVJfb+zLnc86Sk/HgYTusdNENAnbXhBlDTrTF+i881bSwbOqzId9G1MpXP325a5m6YKWZt4FZqcvGIp8e1usOwRQHuvpYI3Wft9R8YjQNzBzBjLHcgOyZnVFMwjuPXKq1KHRW0VwmF7ZgATUJ7f08ngrdA3rK9ph1W2AjFblZF/QZ54eFIVG+5hILRJKaMsf5FARhquNO3lAQk1nulDz5EWkS9Kj7BtEHGAOQXR/iaw2OsnrZxBR6E5chMxJh7LKsw+CQ/MpZ/w/K0E8LP4/o53dUeuRzcCgxzrgZS/Nwy0dXw1SLL/EnG4GFOTPvSOz6A77d',
}

user { 'adep':
           ensure     => present,
           home       => '/home/adep',
           managehome => true,
}

ssh_authorized_key { 'adep_ssh':
        user => 'adep',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCXqPn7kFT/ULm51OJLVJfb+zLnc86Sk/HgYTusdNENAnbXhBlDTrTF+i881bSwbOqzId9G1MpXP325a5m6YKWZt4FZqcvGIp8e1usOwRQHuvpYI3Wft9R8YjQNzBzBjLHcgOyZnVFMwjuPXKq1KHRW0VwmF7ZgATUJ7f08ngrdA3rK9ph1W2AjFblZF/QZ54eFIVG+5hILRJKaMsf5FARhquNO3lAQk1nulDz5EWkS9Kj7BtEHGAOQXR/iaw2OsnrZxBR6E5chMxJh7LKsw+CQ/MpZ/w/K0E8LP4/o53dUeuRzcCgxzrgZS/Nwy0dXw1SLL/EnG4GFOTPvSOz6A77d',
}

}