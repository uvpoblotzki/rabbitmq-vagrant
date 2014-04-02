exec { 'apt-get update': 
  command => '/usr/bin/apt-get update', 
}->
package { 'curl':
  ensure => 'latest',  
}->
class { 'rabbitmq':
  port              => '5672',
  service_ensure    => 'running', 
  delete_guest_user => true,
}->
rabbitmq_user { 'ulrich':
  admin    => true,
  password => 'keins',
  provider => 'rabbitmqctl',
}
