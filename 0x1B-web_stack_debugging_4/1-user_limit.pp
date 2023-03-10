# Define a custom ulimit configuration for the holberton user
file { '/etc/security/limits.d/holberton.conf':
  content => "holberton soft nofile 8192\nholberton hard nofile 8192",
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
}

# Reload the PAM configuration to apply the new ulimit settings
exec { 'reload_pam_config':
  command => '/usr/sbin/service ssh reload',
  path    => '/usr/bin:/usr/sbin:/bin:/sbin',
  unless  => 'grep -q "^session    required   pam_limits.so$" /etc/pam.d/sshd',
}
