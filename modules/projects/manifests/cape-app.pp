# project configured to listen on socket at "#{ENV['BOXEN_SOCKET_DIR']}"/cape_app
#you'll now be able to run its local server and visit http://cape_app.dev/ to access the app in dev.
class projects::cape-app {
  #include icu4c
 # include phantomjs
   include ghostscript
   include imagemagick
   include graphviz
 #  include qt
   include swig
   include pcre
   include mysql
   include openssl #if eventmachine gem fails# brew link openssl --force
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
$version = "2.1.7"
ruby_gem { "bundler for ${version}":
  gem          => 'bundler',
  version      => '>= 1.12.5',
  ruby_version => $version,
}

# ensure a gem is installed for all ruby versions
ruby_gem { 'bundler for all rubies':
  gem          => 'bundler',
  version      => '~> 1.12',
  ruby_version => '*',
}

  boxen::project { 'cape-app':
    dotenv        => true,
  #  elasticsearch => true,
    mysql         => true,
  #  nginx         => false,
  #  passenger     => false,
  #  redis         => true,
    memcached    => true,
    ruby          => '2.1.7',
    source        => 'https://john.cowhig@stash.parkmobile.com/scm/uscape/cape-app.git'
  }
}
