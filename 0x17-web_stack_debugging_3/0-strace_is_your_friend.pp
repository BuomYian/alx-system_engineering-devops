# Ensure the class-wp-locale.php file has the correct permissions
file { '/var/www/html/wp-includes/class-wp-locale.php':
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
  content => file('/var/www/html/wp-includes/class-wp-locale.phpp'),
}

# Restart the Apache service if the class-wp-locale.php file has been updated
service { 'apache2':
  ensure  => running,
  enable  => true,
  require => File['/var/www/html/wp-includes/class-wp-locale.php'],
}
