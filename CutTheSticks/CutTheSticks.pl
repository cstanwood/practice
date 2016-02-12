#!/usr/bin/perl -w
package CutTheSticks;
use strict;
use 5.018;

sub run() {
    chomp( my $num_sticks = <STDIN> );
    my @results;

    chomp( my $var_name = <STDIN> );
    push @results, PackageName->solve($var_name);

    for my $result (@results) {
        say $result;
    }
}

run() if not caller;

sub solve {
    my ( $package_name, $num_sticks, $lengths ) = @_;
    my @lengths = split /\s+/, $lengths;
    @lengths = sort (@lengths);
    #@lengths;
}
1;
