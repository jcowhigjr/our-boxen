include people::jcowhigjr::applications

class people::jcowhigjr {
  # core modules, needed for most things
  # include dnsmasq
  # include git
  # include hub
  # include nginx
  # include homebrew

  #os x
  #include osx::software_update
  include clipmenu
  include screenhero

  #basic
  include java

  #devops
  include postgresql
  #include mysql
  include mongodb
  include vagrant
  include virtualbox
  include heroku

  #mobile
  include android::ndk
  include android::sdk
  include android::platform_tools
  include meteorjs


  # include imagemagick
  # include graphviz

  #devtools
  include iterm2::stable
  include zsh
  include emacs

 # misc
 # include ctags


  # vagrant::plugin { 'vagrant-vmware-fusion':
    # license => 'puppet:///Users/jcowhigjr/.vagrant.d/license-vagrant-vmware-fusion.lic',
  # }

  # vagrant::box { 'squeeze64/vmware_fusion':
    # source => 'https://s3.amazonaws.com/github-ops/vagrant/squeeze64-6.0.7-vmware_fusion.box'
  # }
#  include hub


  #include android::studio

#  include swig
#  include pcre
#  include cyberduck
#  include irssi
#  include xz
#  include wkhtmltopdf

  # OS X applications
  include rdio
  include btsync
  # include daisy_disk
  # include dashlane
  # include mumble
  include rubymine


  $home      = "/Users/${::luser}"
  $devfolder = "${home}/my"

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
      'elinks',
    ]:
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
#	file { $devfolder:
#  	ensure => "directory"
#	}
#  repository { $dotfiles:
#    source  => 'jcowhigjr/dotfiles',
#    require => File[$devfolder]
#  }
}
