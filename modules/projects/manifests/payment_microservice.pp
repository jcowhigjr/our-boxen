# project configured to listen on socket at "#{ENV['BOXEN_SOCKET_DIR']}"/payment_microservice
#you'll now be able to run its local server and visit http://payment_microservice.dev/ to access the app in dev.
class projects::payment_microservice {
   include mysql
#  include openssl #if eventmachine gem fails# brew link openssl --force
   #bug fix for eventmachine https://github.com/eventmachine/eventmachine/issues/602 brew link openssl --force
#[client]
#default-character-set=utf8
#[mysql]
#default-character-set=utf8
#[mysqld]
#init_connect='SET collation_connection = utf8_unicode_ci'
#init_connect='SET NAMES utf8'
#character-set-server=utf8"
#collation-server=utf8_unicode_ci
#skip-character-set-client-handshake
# ensure a certain ruby version is used in a dir
#ruby::local { '/path/to/some/project':
#  version => '2.2.2'
#}

# ensure a gem is installed for a certain ruby version
# note, you can't have duplicate resource names so you have to name like so
$version = "2.2.2"
ruby_gem { "bundler for ${version}":
  gem          => 'bundler',
#  version      => '~> 1.10.6',
  ruby_version => $version,
}

  boxen::project { 'payment_microservice':
    dotenv        => true,
  #  elasticsearch => true,
    mysql         => true,
  #  nginx         => false,
  #  passenger     => false,
  #  redis         => true,
    ruby          => '2.2.2',
    source        => 'ssh://git@stash-ssh.parkmobile.com:7999/usresrv/payment_microservice.git'
  }
}
