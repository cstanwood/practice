#!/usr/bin/perl -w
package UtopianTree;
use strict;
use 5.018;

sub run() {
    chomp( my $num_tests = <STDIN> );
    my @results;
    for ( 1 .. $num_tests ) {
        chomp( my $cycles = <STDIN> );
        push @results, UtopianTree->grow($cycles);
    }
    for my $result (@results) {
        say $result;
    }
}

run() if not caller;

sub grow {
    my $tree_height = 1;
    my ( $package_name, $cycles ) = @_;
    for ( 1 .. $cycles ) {
        if ( $_ % 2 == 1 ) {
            $tree_height *= 2;
        }
        else {
            $tree_height += 1;
        }
    }
    $tree_height;
}
1;
