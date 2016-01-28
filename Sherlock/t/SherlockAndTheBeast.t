#!/usr/bin/perl -w
use strict;
use 5.018;
use Test::More tests => 14;
require("SherlockAndTheBeast.pl");

ok( Sherlock->get_decent_number(1)  eq -1 );
ok( Sherlock->get_decent_number(3)  eq 555 );
ok( Sherlock->get_decent_number(5)  eq 33333 );
ok( Sherlock->get_decent_number(11) eq 55555533333 );
ok( Sherlock->get_decent_number(1)  eq -1 );
ok( Sherlock->get_decent_number(2)  eq -1 );
ok( Sherlock->get_decent_number(3)  eq 555 );
ok( Sherlock->get_decent_number(4)  eq -1 );
ok( Sherlock->get_decent_number(5)  eq 33333 );
ok( Sherlock->get_decent_number(6)  eq 555555 );
ok( Sherlock->get_decent_number(7)  eq -1 );
ok( Sherlock->get_decent_number(8)  eq 55533333 );
ok( Sherlock->get_decent_number(9)  eq 555555555 );
ok( Sherlock->get_decent_number(10) eq 3333333333 );

