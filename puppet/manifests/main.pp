class { 'rabbitmq':
  port              => '5672',
  environment_variables   => {
    'RABBITMQ_NODENAME'     => 'node01',
    'RABBITMQ_SERVICENAME'  => 'RabbitMQ'
  }
}

include 'rabbitmq'