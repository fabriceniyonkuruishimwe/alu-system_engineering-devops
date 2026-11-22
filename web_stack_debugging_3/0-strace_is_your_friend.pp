# Fixes a typo (phpp -> php) that makes Apache return a 500 error
exec { 'fix-wordpress':
  command => 'sed -i "s/phpp/php/g" /var/www/html/wp-includes/class-wp-locale.php',
  path    => ['/bin', '/usr/bin'],
}
