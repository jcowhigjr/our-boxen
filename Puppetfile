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

github "boxen", "2.1.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "gcc",        "1.0.0"
github "git",        "1.2.2"
github "homebrew",   "1.1.2"
github "hub",        "1.0.0"
github "inifile",    "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",      "1.4.0"
github "nodejs",     "2.2.0"
github "repository", "2.0.2"
github "ruby",       "4.1.0"
github "stdlib",     "4.0.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "vim",      "1.0.0"
github "skype",     "1.0.2"
github "tmux",     "1.0.0"
github "magican",     "1.0.1"
github "growl_fork", "1.0.4", :repo => "petems/puppet-growl_fork"
github "sublime_text_2", "1.1.0"
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
github "emacs", "1.1.0"
github "heroku", "2.0.0"
github "slate", "1.0.0"
github "textmate", "1.1.0"
github "mou", "1.0.0"
github "ctags", "1.0.0"
github "heroku", "2.0.0"
github "icu4c", "1.0.0"
github "phantomjs", "1.0.0"
github "elasticsearch", "1.0.0"
github "java", "1.1.0"
github "redis", "1.0.0"
github "vagrant", "2.0.6"
#github "titanium", "1.2.3", :repo => "inakiabt/boxen-titanium"
github "java", "1.1.1"
