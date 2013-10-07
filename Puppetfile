# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "2.3.6"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "homebrew",   "1.2.1"
github "hub",        "~>1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.2.8"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.2.0"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

#github "elasticsearch", "~>1.0.3"
github "java",       "~>1.1"
github "postgresql", "~>1"
github "redis",      "~>1"
github "sysctl",     "~>1"
github "emacs",      "~>1"


#inspectall_webapp
github "qt",         "~>1"
github "imagemagick", "~>1", :repo => "shazino/puppet-imagemagick"
#github "graphviz", "~>1.0"
github "freetds",    "~>1"
github "virtualbox", "~>1.0.5"
github "phantomjs", "~>2"
#github "repository", "~>2"

#jcowhigjr.puppetlabs
github "iterm2",    "~>1"
github "zsh",       "~>1"
#github "osx",       "~>1"
github "clipmenu", "~>1"
github "ctags", "~>1"
github "vagrant", "~>2.0.11"

# mod "property_list_key",  "0.1.0",   :github_tarball => "glarizza/puppet-property_list_key"
#   # Disable Gatekeeper so you can install any package you want
#   property_list_key { 'Disable Gatekeeper':
#     ensure: present,
#     path: '/var/db/SystemPolicy-prefs.plist',
#     key: 'enabled',
#     value: 'no',
#   }

#   $my_homedir = "/Users/${::luser}"

#   # NOTE: Dock prefs only take effect when you restart the dock
#   property_list_key { 'Hide the dock':
#     ensure: present,
#     path: "${my_homedir}/Library/Preferences/com.apple.dock.plist",
#     key: 'autohide',
#     value: true,
#     value_type: 'boolean',
#     notify: Exec['Restart the Dock'],
#   }

#   property_list_key { 'Align the Dock Left':
#     ensure: present,
#     path: "${my_homedir}/Library/Preferences/com.apple.dock.plist",
#     key: 'orientation',
#     value: 'left',
#     notify: Exec['Restart the Dock'],
#   }

#   property_list_key { 'Lower Right Hotcorner - Screen Saver':
#     ensure: present,
#     path: "${my_homedir}/Library/Preferences/com.apple.dock.plist",
#     key: 'wvous-br-corner',
#     value: 10,
#     value_type: 'integer',
#     notify: Exec['Restart the Dock'],
#   }

#   property_list_key { 'Lower Right Hotcorner - Screen Saver - modifier':
#     ensure: present,
#     path: "${my_homedir}/Library/Preferences/com.apple.dock.plist",
#     key: 'wvous-br-modifier',
#     value: 0,
#     value_type: 'integer',
#     notify: Exec['Restart the Dock'],
#   }

#   exec { 'Restart the Dock':
#     command: '/usr/bin/killall -HUP Dock',
#     refreshonly: true,
#   }

#   file { 'Dock Plist':
#     ensure: file,
#     require: [
#                  Property_list_key['Lower Right Hotcorner - Screen Saver - modifier'],
#                  Property_list_key['Hide the dock'],
#                  Property_list_key['Align the Dock Left'],
#                  Property_list_key['Lower Right Hotcorner - Screen Saver'],
#                  Property_list_key['Lower Right Hotcorner - Screen Saver - modifier'],
#                ],
#     path: "${my_homedir}/Library/Preferences/com.apple.dock.plist",
#     mode: '0600',
#     notify: Exec['Restart the Dock'],
#   }

#   # My dotfile repository
#   repository { "${my_sourcedir}/dotfiles":
#     source: 'jcowhigjr/dotfiles',
#   }

#   file { "${my_homedir}/.tmux.conf":
#     ensure: link,
#     mode: '0644',
#     target: "${my_sourcedir}/dotfiles/tmux.conf",
#     require: Repository["${my_sourcedir}/dotfiles"],
#   }

#   file { "/Users/${my_username}/.zshrc":
#     ensure: link,
#     mode: '0644',
#     target: "${my_sourcedir}/dotfiles/zshrc",
#     require: Repository["${my_sourcedir}/dotfiles"],
#   }

#   file { "/Users/${my_username}/.vimrc":
#     ensure: link,
#     mode: '0644',
#     target: "${my_sourcedir}/dotfiles/vimrc",
#     require: Repository["${my_sourcedir}/dotfiles"],
#   }

#   # # Yes, oh-my-zsh. Judge me.
#   # file { "/Users/${my_username}/.oh-my-zsh":
#   #   ensure  : link,
#   #   target  : "${my_sourcedir}/oh-my-zsh",
#   #   require : Repository["${my_sourcedir}/oh-my-zsh"],
#   # }