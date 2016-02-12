#!/usr/bin/perl -w
package SwimLanes;
use strict;
use 5.018;

run() unless caller;

sub run {
    my @results;
    chomp( my $line = <STDIN> );
    my ( $array_size, $num_tests ) = split( /\s+/, $line );
    chomp( my $swim_lanes = <STDIN> );
    for ( 1 .. $num_tests ) {
        chomp( $line = <STDIN> );
        my ( $enter, $exit ) = split( /\s+/, $line );
        push @results,
          SwimLanes->getLargestVehicle( $enter, $exit, $swim_lanes );
    }
    for (@results) {
        say;
    }
}

sub getLargestVehicle {
    my ( $package_name, $enter, $exit, $lanes ) = @_;
    my $length = $exit - $enter + 1;

    # there are spaces everywhere, which doubles everything
    $length *= 2;
    $enter  *= 2;
    my $index = index( substr( $lanes, $enter, $length ), "1" );
    if ( $index != -1 ) {
        return 1;
    }
    $index = index( substr( $lanes, $enter, $length ), "2" );
    if ( $index != -1 ) {
        return 2;
    }
    else {
        return 3;
    }

}
1;

