# $Id: //depot/DateTime-Format-Excel/t/00signature.t#2 $
use strict;
use Test::More tests => 1;

eval "use Test::Signature 1.03";
SKIP: {
    skip "Test::Signature 1.03 not installed.", 1 if $@;
    signature_ok();
}
