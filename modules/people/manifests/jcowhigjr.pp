class people::jcowhigjr {

  # other useful packages
  package {
    [
      'htop',
      'tree',
      'elinks',
#      'rbenv',
#      'direnv',
    ]:
  }

include projects::cape-app

#  include sparrow # requires sparrow module in Puppetfile

#  $home     = "/Users/${::boxen_user}"
#  $home      = "/Users/john.cowhig/”
#  file { $home:
#    ensure  => directory
#  }

#   file { $my:
#    ensure  => directory
#  }
#  $my       = "${home}/my"
#  $dotfiles = "${my}/dotfiles"
#   $devfolder = "${home}/my"


#  repository { $dotfiles:
#    source  => 'jcowhigjr/dotfiles',
#    require => File[$my]
#  }


  #include ::people::jcowhigjr::env_settings

  $_apps = hiera('apps', undef)
  $_homebrew_packages = hiera('homebrew::packages', undef)
  $_homebrew_casks = hiera('homebrew::casks', undef)
  $_homebrew_taps = hiera('homebrew::taps', undef)
  $_appstore_apps = hiera('appstore::apps', undef)
#  $_dotfiles_dirs = hiera('dotfiles::dirs', undef)
#  $_dotfiles_files = hiera('dotfiles::dirs', undef)
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
      users    => $::luser,
      hosts    => 'ALL',
      commands => [
        '(ALL) NOPASSWD:SETENV: /usr/sbin/installer',
      ],
      type     => 'user_spec',
    }
  }


#  if $_dotfiles_dirs {
#   include ::dotfiles::dirs
#     package { $_dotfiles_dirs:
#     ensure   => present
#     }
#  }

  ## Dotfiles
 # include ::dotfiles
 # #::dotfiles::dir { '.ssh':
 #   mode => '0700',
 # }
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
#  vagrant::plugin { 'vagrant-vmware-fusion':
#    license => 'puppet:///modules/people/jcowhigjr/licenses/fusion.lic',
#  }
#  Package['vagrant'] -> Vagrant::Plugin<||>

#  sudoers { 'vagrant-nfs':
#    users    => $::boxen_user,
#    hosts    => 'ALL',
#    commands => [
#      '(ALL) NOPASSWD: /usr/bin/tee -a /etc/exports',
#      '(ALL) NOPASSWD: /sbin/nfsd restart',
#      '(ALL) NOPASSWD: /usr/bin/sed -E -e /*/ d -ibak /etc/exports',
#    ],
#    type     => 'user_spec',
#  }
 # Installs Phantomenv for PhantomJS version management
  include phantomjs

  # Install PhantomJS version 1.9.0
 # phantomjs::version { '1.9.2': }

  # Set the global version of PhantomJS (version should be installed already)
 # phantomjs::global { '1.9.2': }

  # The two commands above in one line
  # include phantomjs::1_9_2

# Sets local version of PhantomJS, writes .phantomenv file to directory specified (version should be installed already)
#  phantomjs::local { '/path/to/whatever':
#    version => '1.9.'
#  }

  # Set the global version of PhantomJS (version should be installed already)
 # phantomjs::local { '1.9.2': }

 include git

# git::config::local { 'repo_specific_email':
#   ensure => present,
#   repo   => '/path/to/my/repo',
#   key    => 'user.email',
#   value  => 'turnt@example.com'
 #}

 git::config::global { 'user.email':
   value  => 'john.cowhig@parkmobile.com'
 }

  # ensure a gem is installed for a certain ruby version
  # note, you can't have duplicate resource names so you have to name like so
  #$version = "1.9.3"
  # $version = "~> 1.9.3p231-tcs-github"

  # ruby::gem { "bundler for ${version}":
  #   gem     => 'hub',
  #   ruby    => $version,
  #   version => '~> 1.10'
  # }

#  $dotfiles  = "${devfolder}/dotfiles"
##    file { $devfolder:
 #     ensure => "directory"
#    }
#  repository { $dotfiles:
##    source  => 'jcowhigjr/dotfiles',
 #   require => File[$devfolder]
 # }

}
