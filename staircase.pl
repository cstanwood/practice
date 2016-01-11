#!/usr/bin/perl -w
use strict;
use 5.018;

chomp (my $n = <STDIN>);

for (my $i = 1; $i <= $n; $i++) {
    printf ("%${n}s\n", "#" x $i, "\n");
}




