#!/usr/bin/perl -w
use strict;
use 5.018;
use Test::More tests => 3;
require("UtopianTree.pl");

ok( UtopianTree->grow(0) eq 1 );
ok( UtopianTree->grow(1) eq 2 );
ok( UtopianTree->grow(4) eq 7 );
