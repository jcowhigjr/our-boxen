require boxen::environment
require homebrew
require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $luser,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::luser}"
  ]
}

File {
  group => 'staff',
  owner => $luser
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
  require  => Class['git']
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


#JC likes
  #  include vim
  include tmux
  include skype
  include magican
  include growl_fork
  include sublime_text_2
#  sublime_text_2::package{'Emmet' :source => 'sergeche/emmet-sublime'}
  include vagrant
  include postgresql
  include graphviz
  include mysql
  include dropbox
  include firefox
  include autojump
  include zsh
  include emacs
  include slate
  include textmate::textmate2::release  # normal release
 # include textmate::textmate2::beta     # beta releases
 # include textmate::textmate2::nightly  # nightly releases
  include mou
  include ctags
  include chrome
#  include titanium
  include java
 # include android
 # android::platform { 'android-16': }
  # include vagrant
  # vagrant::plugin { 'vagrant-vmware-fusion':
  #   license => 'puppet:///modules/people/joe/licenses/fusion.lic',
  # }
  # vagrant::box { 'squeeze64/vmware_fusion':
  #   source => 'https://s3.amazonaws.com/github-ops/vagrant/squeeze64-6.0.7-vmware_fusion.box'}


# fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }
  # node versions
  include nodejs::0-4
  include nodejs::0-6
  include nodejs::0-8
#class { 'nodejs::global':
 #   version => 'v0.10'
#}
  # default ruby versions
  include ruby::1_8_7
  include ruby::1_9_2
  include ruby::1_9_3
  include ruby::2_0_0

  # common, useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar',
      'tree',
      'htop-osx',
      'elinks'
    ]:
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }
}
