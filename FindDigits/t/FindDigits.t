#!/usr/bin/perl -w
use strict;
use 5.018;
use Test::More tests => 2;
require("FindDigits.pl");

ok( FindDigits->find(12) eq 2 );
ok( FindDigits->find(1012) eq 3 );

