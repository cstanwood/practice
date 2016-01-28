#!/usr/bin/perl -w
use strict;
use 5.018;
use Test::More tests => 2;
require("SherlockSquares.pl");

ok( SherlockSquares->count_squares( 3,  9 )  eq 2 );
ok( SherlockSquares->count_squares( 17, 24 ) eq 0 );
