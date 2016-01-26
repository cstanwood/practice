#!/usr/bin/perl -w
package AngryProfessor;
use strict;
use 5.018;

run() unless caller;

sub run {
    my @results;
    chomp( my $num_tests = <STDIN> );
    for ( 1 .. $num_tests ) {
        chomp( my $line1 = <STDIN> );
        chomp( my $line2 = <STDIN> );
        my ( $students, $threshold ) = split( /\s+/, $line1 );
        my (@minutes_late) = split( /\s+/, $line2 );
        push @results,
          AngryProfessor->isCancelled( $students, $threshold, @minutes_late );
    }
    for my $result (@results) {
        if ($result) {
            say "YES";
        }
        else {
            say "NO";
        }

    }
}

sub isCancelled {
    my ( $module_name, $num_students, $threshold, @minutes_late ) = @_;
    my $num_on_time = 0;
    for my $minutes (@minutes_late) {
        $num_on_time++ if $minutes <= 0;
    }
    if ( $num_on_time < $threshold ) {
        1;
    }
    else {
        0;
    }
}
1;

