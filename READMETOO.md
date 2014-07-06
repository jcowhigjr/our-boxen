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


http://mason.hateblo.jp/entry/2013/12/31/Boxen_%E3%82%92%E4%B9%85%E3%81%97%E3%81%B6%E3%82%8A%E3%81%AB%E5%8B%95%E3%81%8B%E3%81%97%E3%81%9F%E3%82%89%E5%8B%95%E3%81%8B%E3%81%AA%E3%81%8B%E3%81%A3%E3%81%9F


Warning: /Stage[main]/Projects::Isdms-web-ror/Boxen::Project[isdms-web-ror]/Ruby::Local[/Users/jcowhigjr/src/isdms-web-ror]/File[/Users/jcowhigjr/src/isdms-web-ror/.rbenv-version]: Skipping because of failed dependencies
Notice: /Stage[main]/Ruby::1_9_2/File[/opt/boxen/rbenv/versions/1.9.2]: Dependency Repository[/opt/boxen/rbenv] has failures: true

~/s/s/isdms-web-ror » cd /opt/boxen/rbenv
/o/b/rbenv » git status                                      ± master:14bc162 15:28:54
# On branch master
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
default-gems
rbenv.d/
nothing added to commit but untracked files present (use "git add" to track)
/o/b/rbenv » git clean -df                                   ± master:14bc162 15:28:56
Removing default-gems
Removing rbenv.d/##
