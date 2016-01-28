#!/usr/bin/perl -w
package SherlockSquares;
use strict;
use 5.018;

sub run() {
    chomp( my $num_tests = <STDIN> );
    my @results;
    for ( 1 .. $num_tests ) {
        chomp( my $line = <STDIN> );
        my @vars = split( /\s+/, $line );
        push @results, SherlockSquares->count_squares(@vars);
    }
    for my $result (@results) {
        say $result;
    }
}

run() if not caller;

sub count_squares {
    my ( $package, $min, $max ) = @_;
    $min = sqrt($min);
    $max = sqrt($max);
    $min = ( $min == int($min) ) ? $min : int( $min + 1 );    #ceil
    $max = int($max);
    $max - $min + 1;
}
1;
