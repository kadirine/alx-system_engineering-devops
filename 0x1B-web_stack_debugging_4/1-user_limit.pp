# Puppet manifest to adjust file limits for the holberton user.
# Author: Mohamed-kadirine <mohamedmo3iz99@gmail.com>

# Increase hard-file limit for the user "holberton".
exec {'replace-1':
  provider => shell,
  command  => 'sudo sed -i "s/nofile 5/nofile 50000/" /etc/security/limits.conf',
  before   => Exec['replace-2'],
}

exec {'replace-2':
  provider => shell,
  command  => 'sudo sed -i "s/nofile 4/nofile 40000/" /etc/security/limits.conf',
}
