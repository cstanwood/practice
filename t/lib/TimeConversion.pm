package TimeConversion;
use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
use base 'Exporter';
our @EXPORT_OK = qw(convert_time);

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
1;
