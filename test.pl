#!/usr/bin/perl -w
use strict;
use 5.018;

my $a = "ABC_";
my $b = "ABCD_";

if ( $a lt $b ) {
    say "$a < $b";
}
else {
    say "$b < $a";
}

