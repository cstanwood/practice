#!/usr/bin/perl -w -Ilib 
use strict;
use lib "../lib";
use Test::More tests => 12;
use TimeConversion qw(convert_time);

ok( convert_time('11:59:59pm') eq '23:59:59' );
ok( convert_time('12:00:00am') eq '00:00:00' );
ok( convert_time('12:00:01am') eq '00:00:01' );
ok( convert_time('11:00:00pm') eq '23:00:00' );
ok( convert_time('01:00:00am') eq '01:00:00' );
ok( convert_time('07:08:09pm') eq '19:08:09' );
ok( convert_time('07:08:09am') eq '07:08:09' );
ok( convert_time('11:59:59am') eq '11:59:59' );
ok( convert_time('12:00:00pm') eq '12:00:00' );
ok( convert_time('12:00:01pm') eq '12:00:01' );
ok( convert_time('11:00:00am') eq '11:00:00' );
ok( convert_time('01:00:00pm') eq '13:00:00' );
