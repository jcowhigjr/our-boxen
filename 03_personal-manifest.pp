class people::jfryman {
  #include ::people::jfryman::env_settings

  $_apps = hiera('apps', undef)
  $_homebrew_packages = hiera('homebrew::packages', undef)
  $_homebrew_casks = hiera('homebrew::casks', undef)
  $_homebrew_taps = hiera('homebrew::taps', undef)
  $_appstore_apps = hiera('appstore::apps', undef)
  $_homedir = "/Users/${::luser}"

  if $_apps {
    validate_array($_apps)
    include $_apps
  }

  if $_appstore_apps {
    validate_hash($_appstore_apps)
    create_resources('appstore::app', $_appstore_apps)
  }

  if $_homebrew_packages {
    package { $_homebrew_packages:
      ensure   => present,
      provider => 'homebrew',
    }
  }

  if $_homebrew_taps {
    homebrew::tap { $_homebrew_taps: }
  }

  if $_homebrew_casks {
    include ::brewcask
    package { $_homebrew_casks:
      ensure   => present,
      provider => 'brewcask',
    }

    sudoers { 'cask-installer':
      users    => $::boxen_user,
      hosts    => 'ALL',
      commands => [
        '(ALL) NOPASSWD:SETENV: /usr/sbin/installer',
      ],
      type     => 'user_spec',
    }
  }

  ## Dotfiles
  include ::dotfiles
  ::dotfiles::dir { '.ssh':
    mode => '0700',
  }
  repository { "${_homedir}/.zprezto":
    source => 'sorin-ionescu/prezto',
    extra  => [
      '--recursive',
    ],
  }
#  file { "${_homedir}/repo":
#    ensure => link,
#    target => '/Volumes/Repositories',
#  }

  ## Spacemacs
  repository { "${_homedir}/.emacs.d":
    source => 'syl20bnr/spacemacs',
    extra  => [
      '--recursive',
    ],
  }

  ## Vagrant
  vagrant::plugin { 'vagrant-vmware-fusion':
    license => 'puppet:///modules/people/jfryman/licenses/fusion.lic',
  }
  Package['vagrant'] -> Vagrant::Plugin<||>

  sudoers { 'vagrant-nfs':
    users    => $::boxen_user,
    hosts    => 'ALL',
    commands => [
      '(ALL) NOPASSWD: /usr/bin/tee -a /etc/exports',
      '(ALL) NOPASSWD: /sbin/nfsd restart',
      '(ALL) NOPASSWD: /usr/bin/sed -E -e /*/ d -ibak /etc/exports',
    ],
    type     => 'user_spec',
  }

}
