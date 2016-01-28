#!/usr/bin/perl -w
package Sherlock;
use strict;
use 5.018;

sub run() {
    chomp (my $num_tests = <STDIN>);
    my @results;
    for (1..$num_tests){
        chomp (my $num_digits = <STDIN>);
        push @results, Sherlock->get_decent_number($num_digits);
    }
    for my $result (@results){
        say $result;
    }
}

run() if not caller;

sub get_decent_number {
    my ( $package_name, $total_digits ) = @_;
    for ( my $fives = int( $total_digits / 3 ) * 3 ; $fives >= 0 ; $fives -= 3 )
    {
        my $threes = $total_digits - $fives;

        if ( $threes % 5 == 0 ) {    # got it
            return sprintf "5" x $fives . sprintf "3" x $threes;
        }
    }
    return -1;
}
1;

