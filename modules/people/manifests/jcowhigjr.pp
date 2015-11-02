include people::jcowhigjr::applications

class people::jcowhigjr {
  # core modules, needed for most things
  # include dnsmasq
  # include git
  # include hub
  # include nginx
  # include homebrew

  #basic
#  include java

  #devops
#  include postgresql
#  include mysql
#  include mongodb
#  include vagrant
#  include virtualbox
#  include heroku
#  include docker

#package { 'Boot2Docker':
#  provider => 'pkgdmg',
#  source   => 'https://github.com/boot2docker/osx-installer/releases/download/v1.0.0/Boot2Docker-1.0.0.pkg',
#}

  #mobile
#  include android::ndk
#  include android::sdk
#  include android::platform_tools
#  include meteorjs

  # include imagemagick
  # include graphviz

  #devtools
#  include iterm2::stable
  include zsh
#  include emacs
  include pow
 # misc
  include ctags
#  include osxfuse

  # vagrant::plugin { 'vagrant-vmware-fusion':
    # license => 'puppet:///Users/jcowhigjr/.vagrant.d/license-vagrant-vmware-fusion.lic',
  # }

  # vagrant::box { 'squeeze64/vmware_fusion':
    # source => 'https://s3.amazonaws.com/github-ops/vagrant/squeeze64-6.0.7-vmware_fusion.box'
  # }
#  include hub

  $home      = "/Users/${::luser}"
  $devfolder = "${home}/my"

#  include projects::isdms-web-ror

#  include projects::inspectall_webapp
# install any arbitrary nodejs version
# nodejs
# nodejs { 'v0.10.1': }

# install some npm modules
#nodejs::module { 'bower':
#  node_version => 'v0_10'
#}

  # other useful packages
  package {
    [
      'htop',
      'tree',
      'wget',
#      'elinks',
#      'rbenv',
#      'direnv',
    ]:
  }

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
#    file { $devfolder:
#      ensure => "directory"
#    }
#  repository { $dotfiles:
#    source  => 'jcowhigjr/dotfiles',
#    require => File[$devfolder]
#  }
   
#   include python

}
