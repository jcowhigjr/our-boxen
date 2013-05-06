include people::jcowhigjr::applications

class people::jcowhigjr {
  include homebrew

  $home      = "/Users/${::luser}"
  $devfolder = "${home}/my"

  include projects::rbes

#  $dotfiles  = "${devfolder}/dotfiles"
#	file { $devfolder: 
#  	ensure => "directory"
#	}
#  repository { $dotfiles:
#    source  => 'jcowhigjr/dotfiles',
#    require => File[$devfolder]
#  }
}
