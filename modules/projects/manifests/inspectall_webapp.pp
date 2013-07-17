class projects::inspectall_webapp {
  #include icu4c
  #include phantomjs
  include imagemagick
  include qt
  include freetds
  include virtualbox

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