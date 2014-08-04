class projects::isdms-web-ror {
  #include icu4c

#  include imagemagick
#  include qt
#  include freetds
  include virtualbox
  include postgresql
  include git
  include nodejs::v0_10

  package {
    [
      'elinks',
      'rbenv',
      'direnv',
    ]:
  }
  # ensure a gem is installed for a certain ruby version
  # note, you can't have duplicate resource names so you have to name like so

    # Installs Phantomenv for PhantomJS version management
#    include phantomjs

    # Install PhantomJS version 1.9.2
#    phantomjs::version { '1.9.0': }

    # The two commands above in one line but doesn't appear to work
#    include phantomjs::1_9_2

    # Sets local version of PhantomJS, writes .phantomenv file to directory specified (version should be installed already)
 #    phantomjs::local { '/Users/jcowhigjr/src/isdms-web-ror':
 #     version => '1.9.2'
 #    }



  boxen::project { 'isdms-web-ror':
#    dotenv        => true,
#    elasticsearch => true,
    postgresql    => true,
    nginx         => true,
#    unicorn       => true,
#    redis         => true,
    ruby          => '2.0.0',
    source        => 'jcowhigjr/isdms-web-ror'
  }
}
