class profile::ssh_server {
        package {'openssh-server':
          ensure => present,
        }
        
        service { 'sshd':
          ensure => running,
          enable => true,
        }
        
        ssh_authorized_key { 'root@master.puppet.vm':
          ensure => present,
          user   => root,
          type   => ssh-rsa,
          key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCgmvwqtIO0sn6Vg+M/OPl0Kx5rZp3BYy2hbeLeUXBOfiqx6o+EhIg3s+m5rsuOntZ9xJ9UoBKx88ntEckipQ6Yt5UgzCtLaPiBSr8uNX7nQQIdzV+z8K65pTdledcGFg916Ydk7xrQqAwFB3aqEv9lgFJJEfbbDqn3/sl8dWSHcbIOOWYlEH2kucoUU1bnrp7Yxzpom5g1S9yMRoxCamQJkM/MMAIRBbD22VncDWvzqfsJWC78YdHhsHa3hFQ3IdIaAuHSfRnca7N5gjVeKe3NR80C6/rLIaEL8jynAydv9iCDKhIBRjUonmAFrb8m7mlX8R1kwG2K9nZRoajZzhBN root@master.puppet.vm', 
        }
}
