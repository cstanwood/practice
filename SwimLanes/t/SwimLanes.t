#!/usr/bin/perl -w
use strict;
use Test::More tests => 5;
require "SwimLanes.pl";

ok( SwimLanes->getLargestVehicle( 0, 3, "2 3 1 2 3 2 3 3" ) eq 1 );
ok( SwimLanes->getLargestVehicle( 4, 6, "2 3 1 2 3 2 3 3" ) eq 2 );
ok( SwimLanes->getLargestVehicle( 6, 7, "2 3 1 2 3 2 3 3" ) eq 3 );
ok( SwimLanes->getLargestVehicle( 3, 5, "2 3 1 2 3 2 3 3" ) eq 2 );
ok( SwimLanes->getLargestVehicle( 0, 7, "2 3 1 2 3 2 3 3" ) eq 1 );
