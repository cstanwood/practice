#!/usr/bin/perl -w
use strict;
use 5.018;
use Test::More tests => 1;
require("CutTheSticks.pl");
no warnings;
ok( CutTheSticks->solve( 3, "3 2 1" ) eq ( 1, 2, 3 ) );
