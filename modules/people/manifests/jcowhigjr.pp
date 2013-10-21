include people::jcowhigjr::applications

class people::jcowhigjr {
  include homebrew
  include imagemagick
  include graphviz
  include iterm2::stable
  include zsh
  include emacs
  #include osx::software_update
  include clipmenu
  include ctags
  include virtualbox
  include java
 # include vagrant
  include hub
  include screenhero
  include android::ndk
  include android::sdk
  #include android::studio
  include btsync
  include swig
  include pcre
  include cyberduck
  include irssi
  include xz
  include heroku
  include wkhtmltopdf
  include rdio
  include postgresql
  #testing
  include daisy_disk
  include rubymine
  include dashlane
  include mumble

  $home      = "/Users/${::luser}"
  $devfolder = "${home}/my"

#  include projects::inspectall_webapp
# install any arbitrary nodejs version
# nodejs
# nodejs { 'v0.10.1': }


#mongodb
# https://github.com/boxen/puppet-mongodb
include mongodb

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
