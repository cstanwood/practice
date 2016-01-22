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

#open( TESTS, "<", shift @ARGV ) or die "Cannot open file for input";
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

#die;

#my @tests;
#for ( 1 .. $num_tests ) {
#}

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
        my $index1 = 0;
        my $index2 = 0;
        while ( $index1 <= length($string1) and $index2 <= length($string2) ) {
            my $next1 = substr( $string1, $index1, 1 );
            my $next2 = substr( $string2, $index2, 1 );
            if ( $next1 lt $next2 or $next1 eq $next2 ) {
                $result .= $next1;
                if ( ++$index1 > length($string1) ) {
                    $result .=
                      substr( $string2, $index2, length($string2) - $index2 );
                }
            }
            elsif ( $next1 gt $next2 ) {
                $result .= $next2;
                if ( ++$index1 > length($string1) ) {
                    $result .=
                      substr( $string2, $index2, length($string2) - $index2 );
                }
            }
        }
    }
    $result;
}
1;
