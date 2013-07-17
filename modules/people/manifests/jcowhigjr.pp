include people::jcowhigjr::applications

class people::jcowhigjr {
  include homebrew
  include imagemagick

  $home      = "/Users/${::luser}"
  $devfolder = "${home}/my"

  include projects::inspectall_webapp

#  $dotfiles  = "${devfolder}/dotfiles"
#	file { $devfolder: 
#  	ensure => "directory"
#	}
#  repository { $dotfiles:
#    source  => 'jcowhigjr/dotfiles',
#    require => File[$devfolder]
#  }
}
