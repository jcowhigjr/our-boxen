include people::jcowhigjr::applications

class people::jcowhigjr {
  include homebrew

  $home      = "/Users/${::luser}"
  $devfolder = "${home}/my"

 #JC likes
   #  include vim
   include tmux
   include skype
   include magican
   include growl_fork
   include sublime_text_2
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
  # include titanium
   include heroku


#  $dotfiles  = "${devfolder}/dotfiles"
#  file { $devfolder: 
#  	ensure => "directory"
#	}
#  repository { $dotfiles:
#    source  => 'jcowhigjr/dotfiles',
#    require => File[$devfolder]
#  }
}