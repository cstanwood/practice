#!/usr/bin/perl -w
use strict;
use 5.018;
#use lib "./lib";
#use TimeConversion qw(convert_time);

chomp( my $am_pm = <STDIN> );
my $twenty_four_hour = convert_time($am_pm);
say $twenty_four_hour;

sub convert_time {

    my $time = shift @_;

    if ( $time =~ /^(\d\d)(.+)(am|pm)$/i ) {
        my $hours   = $1;
        my $min_sec = $2;
        my $ampm = $3;
        if ($ampm =~ /am/i) {
            if ($hours =~ /12/) {
                $hours = '00';
            }
        } elsif ($ampm =~ /pm/i){
            if ($hours !~ /12/) {
                $hours += 12;
            }
        }
        #$hours += 12 if $3 =~ /pm/i;
        $hours . $min_sec;
    }
    else {
        $time;
    }
}
