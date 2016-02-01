#!/usr/bin/perl -w
package SwimLanes;
use strict;
use 5.018;

run() unless caller;

sub run {
    my @results;
    chomp( my $line = <STDIN> );
    my ( $array_size, $num_tests ) = split( /\s+/, $line );
    chomp( $line = <STDIN> );
    my @swim_lanes = split( /\s+/, $line );
    for ( 1 .. $num_tests ) {
        chomp( $line = <STDIN> );
        my ( $enter, $exit ) = split( /\s+/, $line );
        push @results, SwimLanes->getLargestVehicle( $enter, $exit, @swim_lanes );
    }
    for (@results) {
        say;
    }
}

sub getLargestVehicle {
    my ( $package_name, $enter, $exit, @lanes ) = @_;
    my $one = 0;
    my $two = 0;
    for ( my $index = $enter ; $index <= $exit ; $index++ ) {
        if ( $lanes[$index] == 1 ) {
            $one = 1;
            last;
        }
        elsif ( $lanes[$index] == 2 ) {
            $two = 1;
        }
    }
    if ($one) {
        1;
    }
    elsif ($two) {
        2;
    }
    else {
        3;
    }
}
1;

