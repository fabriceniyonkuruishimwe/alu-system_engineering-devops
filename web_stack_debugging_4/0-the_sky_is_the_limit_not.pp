# Raises the open file limit so nginx can handle many requests at once
exec { 'fix--for-nginx':
  command  => 'sed -i "s/^ULIMIT=.*/ULIMIT=\"-n 4096\"/" /etc/default/nginx && service nginx restart',
  path     => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
  provider => 'shell',
}
