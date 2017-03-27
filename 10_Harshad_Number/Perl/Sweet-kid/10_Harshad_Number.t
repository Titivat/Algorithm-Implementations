#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;

use HarshadNumber qw(is_harshad_number);

my $expected = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    12, 18, 20, 21, 24, 27, 30, 36,
    40, 42, 45, 48, 50, 54, 60, 63,
    70, 72, 80, 81, 84, 90, 100, 102,
    108, 110, 111, 112, 114, 117, 120,
    126, 132, 133, 135, 140, 144, 150,
    152,153, 156, 162, 171, 180, 190,
    192, 195, 198, 200
];

my @result;
for my $i( 1 .. 200 ) {
    if( HarshadNumber::is_harshad_number( $i ) ) {
        push @result, $i;
    }
}

is_deeply(\@result, $expected, "Harshad numbers test passed");

done_testing();
