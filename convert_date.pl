#!/usr/bin/perl -w
use strict;
use 5.018;

chomp (my $time = <STDIN>);

if ( $time =~ /^(\d\d)(.+)(am|pm)$/i ) {
    my $hours = $1;
    my $min_sec = $2;
    $hours += 12 if $3 =~ /pm/i;
    say $hours . $min_sec;
}
else {
    say $time;
}

