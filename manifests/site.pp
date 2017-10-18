require boxen::environment
require homebrew
require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::homebrewdir}/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::boxen_user}"
  ]
}

File {
  group => 'staff',
  owner => $boxen_user
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => File["${boxen::config::bindir}/boxen-git-credential"],
  config   => {
    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential"
  }
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things
  include dnsmasq
  include git
  include hub
  include nginx

  # fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }

  # https://github.com/nodenv/node-build-update-defs
  #in the shell run:
  #git clone https://github.com/nodenv/node-build-update-defs.git "$(nodenv root)"/plugins/node-build-update-defs
  # cd "$(nodenv root)"/plugins/node-build-update-def

  # cd "$(nodenv root)"/plugins/node-build-update-defs
  # nodenv local
  # nodenv update && nodenv rehash && nodenv update-version-defs
  # nodenv install --list
  # nodenv install 6.x-next

  # node versions
  nodejs::version { '0.12': }
  nodejs::version { '6.11.3': }


  # default ruby versions
  ruby::version { '2.2.4': }
  ruby::version { '2.3.5': }
  ruby::version { '2.4.2': }

  # common, useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar'
    ]:
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }
}
