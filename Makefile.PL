use ExtUtils::MakeMaker;
WriteMakefile(
    NAME		=> 'DateTime::Format::Excel',
    VERSION_FROM	=> 'lib/DateTime/Format/Excel.pm',
    PREREQ_PM => {
		'DateTime::Duration' => 0,
		'DateTime' => 0.08,
		'Test::More' => 0.47,
	    },
    ($] >= 5.005 ?
      (ABSTRACT_FROM => 'lib/DateTime/Format/Excel.pm',
      AUTHOR     => 'Iain Truskett <spoon@cpan.org>') : ()),
);


