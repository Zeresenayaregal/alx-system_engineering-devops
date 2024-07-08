<<<<<<< HEAD
# Automation: creates a custom HTTP header response with Puppet.
=======
# creates a custom HTTP header response
>>>>>>> 26c7e17d1c74754a0b63d7eaa2d6c6965beb2707
exec { 'command':
  command  => 'apt-get -y update;
  apt-get -y install nginx;
  sudo sed -i "/listen 80 default_server;/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default;
  service nginx restart',
  provider => shell,
}
