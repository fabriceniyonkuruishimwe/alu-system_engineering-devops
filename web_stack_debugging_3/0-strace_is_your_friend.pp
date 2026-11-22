# Fixes a typo (phpp -> php) in WordPress files that makes Apache return a 500 error
exec { 'fix-wordpress':
  command  => 'grep -rl phpp /var/www/html --include=*.php | xargs -r sed -i "s/phpp/php/g"',
  path     => ['/bin', '/usr/bin'],
  provider => 'shell',
}
