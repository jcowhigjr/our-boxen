I use project specific environment configurations with:
rbenv local [ruby-version-number]
Installation

Get rbenv working. Read the documentation thoroughly and be sure to set up your Bash environment correctly.

Install the plugin.

$ git clone -- git://github.com/carsomyr/rbenv-bundler.git \
  ~/.rbenv/plugins/bundler
  Make sure that there is a 1.8.7+ system or rbenv Ruby with the Bundler gem installed, available for the plugin's use.

  $ ruby -r bundler -e "puts RUBY_VERSION"
      1.9.3
      
I add the
ruby '2.0.0'
line to my Gemfile

I run
rbenv rehash

then gem install bundler

then

bundle (install)

---------------------
$ # Suppose the project uses Ruby version 1.9.3-p448.
$ rbenv local 1.9.3-p448

$ # Install the version-specific Bundler gem.
$ gem install bundler

$ # Suppose you already have a Gemfile.
$ bundle install

$ # Don't forget to rehash!
$ rbenv rehash

$ # If "rake" is a Bundler-installed gem executable, report its location
$ # with "rbenv which". The result should look like
$ # "${PWD}/vendor/local/ruby/1.9.1/bin/rake"
$ rbenv which rake

$ # Run "rake" without having to type "bundle exec rake".
$ rake


https://github.com/carsomyr/rbenv-bundler


sudo rm /private/var/db/.puppet_pkgdmg_installed_VirtualBox
bundle exec librarian-puppet install --clean --verbose
