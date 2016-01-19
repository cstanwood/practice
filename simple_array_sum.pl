#!/usr/bin/perl
use strict;
use 5.010;

chomp( my $n        = <STDIN> );
chomp( my $arr_temp = <STDIN> );
my @arr = split / +/, $arr_temp;
my $sum;
for (@arr) {
    $sum += $_;
}

say $sum;
