use ExtUtils::MakeMaker;
WriteMakefile(
    NAME		=> 'DateTime::Format::Excel',
    VERSION_FROM	=> 'lib/DateTime/Format/Excel.pm',
    PREREQ_PM => {
		'DateTime::Duration' => 0,
		'DateTime' => 0.08,
		'Carp' => 1.01,
		'Test::More' => 0.47,
		'Test' => 1.23,
	    },
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'lib/DateTime/Format/Excel.pm', # retrieve abstract from module
      AUTHOR     => 'Iain Truskett <spoon@cpan.org>') : ()),
);


