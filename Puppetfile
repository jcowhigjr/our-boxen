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

github "boxen", "1.3.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",  "1.0.0"
github "gcc",      "1.0.0"
github "git",      "1.0.0"
github "homebrew", "1.1.2"
github "hub",      "1.0.0"
github "inifile",  "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",    "1.1.0"
github "nodejs",   "1.0.0"
github "nvm",      "1.0.0"
github "ruby",     "3.3.1"
github "stdlib",   "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
#github "skype",		"1.0.0"
#github "vim", "1.0.0"
github "skype",     "1.0.2"
github "tmux",     "1.0.0"
github "magican",     "1.0.1"
github "growl_fork", "1.0.4", :repo => "petems/puppet-growl_fork"
github "textmate", "1.1.0", :repo => "AquaGeek/puppet-textmate2"
github "sublime_text_2", "1.1.0"
github "vagrant", "1.0.1"
#mod, <module name>, <version or tag>, <source>
github "chrome", "1.1.0"
github "postgresql", "1.0.0"
github "sysctl", "1.0.0"
#github "bindkey", "1.0.0"
#github "zmodload", "1.0.0"
#github "autoload", "1.0.0"
#github "zle", "1.0.0"
#github "zstyle", "1.0.0"
github "graphviz", "1.0.0"
github "pkgconfig", "1.0.0"
github "swig", "1.0.0"
github "pcre", "1.0.0"
github "mysql", "1.0.0"
github "autojump", "1.0.0"
github "firefox", "1.0.3"
github "dropbox", "1.1.0"
github "osx", "1.0.0"
github "zsh", "1.0.0"
github "emacs", "1.0.0"
github "heroku", "2.0.0"
