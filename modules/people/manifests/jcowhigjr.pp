include people::jcowhigjr::applications

class people::jcowhigjr {
  include homebrew
  include imagemagick
  include iterm2::stable
  include zsh
  include emacs
  #include osx::software_update
  include clipmenu
  include ctags

  $home      = "/Users/${::luser}"
  $devfolder = "${home}/my"

  include projects::inspectall_webapp

  # other useful packages
  package {
    [
      'htop',
      'tree',
      'wget'
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
