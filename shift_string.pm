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
open( TESTS, "<", "input01.txt" ) or die "Cannot open input01.txt";

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
    my $string1 = shift @_;
    my $string2 = shift @_;
    my $result;

    if ( length($string1) == 0 ) {
        $result = $string2;
    }
    elsif ( length($string2) == 0 ) {
        $result = $string1;
    }
    else {
        my @array1 = split( //, $string1 );
        my @array2 = split( //, $string2 );
        my @result;
        my $c1 = shift @array1;
        my $c2 = shift @array2;
        while ( defined($c1) and defined($c2) ) {
            if ( $c1 lt $c2 ) {
                push @result, $c1;
                $c1 = shift @array1;
                if ( not defined $c1 ) {
                    push @result, $c2;
                    $c2 = undef;
                    $result = join( "", @result ) . join( "", @array2 );
                }
            }
            #elsif ( $c1 eq $c2 ) {
                #push @result, $c1;
                #push @result, $c2;
                ##$c1 = shift @array1;
            #    $c2 = shift @array2;
            #    if ( not defined $c1 ) {
            #        push @result, $c2;
            #        $c2 = undef;
            #        $result = join( "", @result ) . join( "", @array2 );
            #    }
            #    elsif ( not defined $c2 ) {
            #        push @result, $c1;
            #        $c1 = undef;
            #        $result = join( "", @result ) . join( "", @array1 );
            #    }
            #}
            elsif ( $c1 eq $c2 or $c1 gt $c2 ) {
                push @result, $c2;
                $c2 = shift @array2;
                if ( not defined $c2 ) {
                    push @result, $c1;
                    $c1 = undef;
                    $result = join( "", @result ) . join( "", @array1 );
                }
            }
        }
    }
    $result;
}

1;
