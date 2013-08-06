class projects::inspectall_webapp {
  #include icu4c
  
  include imagemagick
  include qt
  include freetds
  include virtualbox
  include phantomjs
  include phantomjs::1_9_0


#          phantomjs::local { '/path/to/whatever':
#                           version => '1.9.0'
#                           }

  boxen::project { 'inspectall_webapp':
    dotenv        => true,
    elasticsearch => true,
    postgresql    => true,
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'inspectall/WebApp'
  }
}
