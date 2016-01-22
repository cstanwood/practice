#!/usr/bin/perl -w
use strict;
use 5.018;

require Exporter;
our @ISA       = qw(Exporter);
our @EXPORT_OK = qw(lexical_min);

#my $string1 = "JACK";
#my $string2 = "DANIEL";
#my $string1 = "ABACABA";
#my $string2 = "ABACABA";
#  AABABACABACABA
#AABBAACCAABBAA

open( TESTS, "<", shift @ARGV ) or die "Cannot open file for input";

chomp( my $num_tests = <TESTS> );
my @tests;
my @results;
for ( 1 .. $num_tests ) {
    chomp( my $string1 = <TESTS> );
    chomp( my $string2 = <TESTS> );
    my $result = lexical_min( $string1, $string2 );
    push @results, $result;
}

open( RESULTS, ">", "my_output.txt" ) or die "Cannot open my_output.txt";
for my $result (@results) {
    print RESULTS $result . "\n";
}

sub lexical_min {
    my $string1 = shift;
    my $string2 = shift;
    my $result;

    if ( length($string1) == 0 ) {
        $result = $string2;
    }
    elsif ( length($string2) == 0 ) {
        $result = $string1;
    }
    else {
        my $index1;
        my $index2;
        while ( $index1 <= length($string1) and $index2 <= length($string2) ) {
            no warnings;
            my $next1 = substr( $string1, $index1, 1 );
            my $next2 = substr( $string2, $index2, 1 );
            given ( $next1 cmp $next2 ) {
                when ( -1 or 0 ) {
                    $result .= $next1;
                    if ( ++$index1 > length($string1) ) {
                        $result .=
                          substr( $string2, $index2,
                            length($string2) - $index2 );
                    }
                }
                when (1) {
                    $result .= $next2;
                    if ( ++$index1 > length($string1) ) {
                        $result .=
                          substr( $string2, $index2,
                            length($string2) - $index2 );
                    }
                }
                use warnings;
            }
        }
    }
    $result;
}
1;
