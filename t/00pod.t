# $Id: //depot/DateTime-Format-Excel/t/00pod.t#2 $
use strict;
use vars qw( @files );

BEGIN {
    @files = qw(
	Excel.pm
    );
}
use Test::More tests => scalar @files;
eval "use Test::Pod 0.95";
SKIP: {
    skip "Test::Pod 0.95 not installed.", 1 if $@;
    chdir(-d "lib/DateTime/Format" ? "lib/DateTime/Format" : "../lib/DateTime/Format");
    pod_file_ok( $_, "Valid POD file: $_" ) for @files;
}
