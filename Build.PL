#!/usr/bin/perl -w
use strict;
use Module::Build 0.16;

my $build = Module::Build->new
(
    module_name => 'DateTime::Format::Excel',
    license => 'perl',
    requires => {
	'perl'		=> '5.6.0',
	'DateTime'	=> '0.07',
    },
    build_requires => {
	'Test::More'	=> '0.47',
    },
);
$build->create_build_script;
