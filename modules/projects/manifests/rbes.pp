class projects::rbes {
  include icu4c
  include phantomjs

  boxen::project { 'rbes':
    dotenv        => true,
    elasticsearch => true,
    postgresql    => true,
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'Triplingo/rbes'
  }
}