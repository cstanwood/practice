#!/usr/bin/perl -w
package Strings;
use strict;
use 5.018;

run(@ARGV) unless caller();

sub run {
    my @results;
    my $line = 1;
    my $result;
    my $string1;
    my $string2;
    while (<>) {
        if ( $line == 1 ) {
            chomp( my $num_tests = $_ );
        }
        elsif ( $line % 2 == 0 ) {
            chomp( $string1 = $_ );
        }
        else {
            chomp( my $string2 = $_ );
            $result = lexical_min( $string1, $string2 );
            push @results, $result;
        }
        $line++;
    }

    #open( RESULTS, ">", "my_output.txt" ) or die "Cannot open my_output.txt";
    for my $result (@results) {
        print $result . "\n";
    }
}

sub lexical_min {
    my $string1 = shift;
    $string1 = shift if $string1 eq "Strings";
    my $string2 = shift;
    my $result;
    my $index1 = 0;
    my $index2 = 0;
    $string1 .= "z";
    $string2 .= "z";
    while ( $index1 < length($string1) and $index2 < length($string2) ) {
        if ( substr( $string1, $index1 ) lt substr( $string2, $index2 ) ) {
            $result .= substr( $string1, $index1++, 1 );
        }
        else {
            $result .= substr( $string2, $index2++, 1 );
        }
    }
    $result = substr( $result, 0, length($result) - 1 );
}
