# project configured to listen on socket at "#{ENV['BOXEN_SOCKET_DIR']}"/cape_app
#you'll now be able to run its local server and visit http://cape_app.dev/ to access the app in dev.

$version = "2.3.5"

class projects::rails5-app {

  ruby::version { $version: }

  # ensure a gem is installed for a certain ruby version
  # note, you can't have duplicate resource names so you have to name like so
  ruby_gem { "bundler for ${version}":
    gem          => 'bundler',
    version      => '~> 1.15',
    ruby_version => $version,
  }

  #include git

  #git::config::local { 'repo_specific_email':
  #  ensure => present,
  #  repo   => '/path/to/my/repo',
  #  key    => 'user.email',
  #  value  => 'turnt@example.com'
  #}

  #git::config::local { 'user.email':
  #  value  => 'john.cowhig@parkmobileglobal.com'
  #}

  boxen::project { 'rails5-app':
    dotenv        => false,
    ruby          => $version
  }
}
