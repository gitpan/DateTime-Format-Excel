use ExtUtils::MakeMaker;
WriteMakefile(
    NAME                => 'DateTime::Format::Excel',
    VERSION_FROM        => 'lib/DateTime/Format/Excel.pm',
    PREREQ_PM => {
                'DateTime' => '0.1705',
                'DateTime::Duration' => '0',
                'Test::More' => '0.47',
            },
    ($] >= 5.005 ?
      (ABSTRACT_FROM => 'lib/DateTime/Format/Excel.pm',
      AUTHOR     => 'Iain Truskett <spoon@cpan.org>') : ()),
    ( eval($ExtUtils::MakeMaker::VERSION) >= 6.10 ?
        ( NO_META => 1, ) : ()),
);
