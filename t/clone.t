# $Id: //depot/DateTime-Format-Excel/t/clone.t#2 $
use strict;
use Test::More tests => 14;

BEGIN {
    use_ok 'DateTime::Format::Excel';
}

my $class = 'DateTime::Format::Excel';

my $clone_it = sub {
    my $obj = shift;
    my $method = shift||"new";
    my $clone = $obj->$method();
    isa_ok( $obj => $class );
    is( $obj->epoch => $clone->epoch, "Clone's epoch matches, default." );
};


my $obj = $class->new();
isa_ok( $obj => $class );

for my $method (qw( new clone ))
{
    $clone_it->( $obj, $method );
    $obj->epoch_mac;
    $clone_it->( $obj, $method );
    $obj->epoch_win;
    $clone_it->( $obj, $method );
}
