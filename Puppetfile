# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.6.2"

# Support for default hiera data in modules

github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.1.1"
github "git",         "2.5.0"
github "go",          "1.1.0"
github "homebrew",    "1.9.4"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.8.1"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.1.2"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

#github "elasticsearch", "~>1.0.3"
github "java",       "~>1"
github "postgresql", "~>2"
github "sysctl",     "~>1"  #required by postgresql

github "redis",      "~>1"
github "emacs",      "~>1"
github "mongodb",    "~>1"
# github "pkgconfig",  "~>1"
# github "swig",       "~>1"
# github "pcre",       "~>1"
# github "cyberduck",  "~>1"
# github "irssi",       "~>1"
github "heroku",      "~>2"
# github "wkhtmltopdf", "~>1"


# #inspectall_webapp
# github "qt",         "~>1"
# github "imagemagick", "~>1", :repo => "shazino/puppet-imagemagick"
# github "graphviz", "~>1.0"
# github "freetds",    "~>1"
github "virtualbox", "~>1.0"
# github "xz", "~>1"
github "rdio", "~>1"
# #github "repository", "~>2"

# #jcowhigjr.puppetlabs
github "iterm2",      "~>1"
github "zsh",         "~>1"
github "osx",         "~>1" #needed for zsh
github "thunderbird", "~>1"
github "clipmenu",    "~>1"
github "ctags",     "~>1"
github "vagrant",     "~>3"  #, :repo => "weyert/puppet-vagrant"
github "screenhero",  "~>1"
github "android",     "~>1"
# github "daisy_disk", "~>1"
github "rubymine",     "~>1.1"
github "dashlane", "~>1"
# github "mumble", "~>1"
github "btsync", "~>1"
# github "riak", "~>1"
github "cassandra", "~>1"
github "meteorjs", "~>1", :repo => "newtriks/puppet-meteorjs"
github "mysql"

github "toggl", "~>1"
github "pow", "~>2"
github "osxfuse", "~>1"

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
