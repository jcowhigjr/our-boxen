include people::jcowhigjr::applications

class people::jcowhigjr {
  include homebrew
  include imagemagick
  include iterm2::stable
  include zsh
  include emacs
  #include osx::software_update
#  include phantomjs
  include clipmenu
 # phantomjs::version { '1.9.0': }
#  include phantomjs::1_9_0
#  phantomjs::local { :
#                   version => '1.9.0'
#}                  
  $home      = "/Users/${::luser}"
  $devfolder = "${home}/my"

  include projects::inspectall_webapp

  # other useful packages
  package {
    [
      'htop'
    ]:
  }

#  $dotfiles  = "${devfolder}/dotfiles"
#	file { $devfolder: 
#  	ensure => "directory"
#	}
#  repository { $dotfiles:
#    source  => 'jcowhigjr/dotfiles',
#    require => File[$devfolder]
#  }
}
