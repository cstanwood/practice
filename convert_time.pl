#!/usr/bin/perl -w
use strict;
use 5.018;
use DateTime::Format;

my $parser = DateTime::Format::Strptime->new(
    pattern => '%I:%M:%S%p',
);

chomp (my $time = <STDIN>);

$time = $parser->parse_datetime($time);

print $time->strftime( "%H:%M:%S") . "\n";



