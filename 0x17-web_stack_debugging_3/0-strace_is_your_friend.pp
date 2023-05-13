# Install Apache
package { 'apache2':
  ensure => installed,
}

# Start Apache
service { 'apache2':
  ensure => running,
  enable => true,
}

# Create PHP file
file { '/var/www/html/test.php':
  content => "<?php echo 'Hello World'; ?>\n",
}

# Set permissions
file { '/var/www/html':
  ensure => 'directory',
  mode => '0755',
  recurse => true,
  require => File['/var/www/html/test.php'],
}
