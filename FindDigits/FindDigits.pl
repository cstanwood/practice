#!/usr/bin/perl -w
package FindDigits;
use strict;
use 5.018;

sub run() {
    chomp( my $num_tests = <STDIN> );
    my @results;
    for ( 1 .. $num_tests ) {
        chomp( my $var_name = <STDIN> );
        push @results, FindDigits->find($var_name);
    }
    for my $result (@results) {
        say $result;
    }
}

run() if not caller;

sub find {
    my ( $package_name, $digits ) = @_;
    my @digits = split( //, $digits );
    my $count = 0;
    for my $d (@digits) {
        $count++ if $d != 0 and $digits % $d == 0;
    }
    $count;
}
1;
