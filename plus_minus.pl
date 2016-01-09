#!/usr/bin/perl
use strict;
use 5.018;

chomp (my $n = <STDIN>);

chomp (my $arr_temp = <STDIN>);
my @arr = split / /,$arr_temp;
my $pos;
my $neg;
my $zero;

for my $num (@arr) {
    if ($num > 0) {
        $pos++;
    } elsif ($num < 0) {
        $neg++; 
    } else {
        $zero++;
    }
}

printf "%1.6f\n", $pos / $n;
printf "%1.6f\n", $neg / $n;
printf "%1.6f\n", $zero / $n;
