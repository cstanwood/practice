#!/usr/bin/perl -w -Ilib
use strict;
use warnings;
use Test::More tests => 11;
require "shift_string.pl";

ok( Strings->lexical_min( "JACK",    "DANIEL" )  eq "DAJACKNIEL" );
ok( Strings->lexical_min( "ABACABA", "ABACABA" ) eq "AABABACABACABA" );
ok( Strings->lexical_min( "",        "ABACABA" ) eq "ABACABA" );
ok( Strings->lexical_min( "ABACABA", "" )        eq "ABACABA" );
ok( Strings->lexical_min( "",        "" )        eq "" );

ok( Strings->lexical_min( "DAD", "DAD" ) eq "DADADD" );
ok( Strings->lexical_min( "ABCBA",     "BCBA" )     eq "ABBCBACBA" );
ok( Strings->lexical_min( "BAC",       "BAB" )      eq "BABABC" );
ok( Strings->lexical_min( "DAD",       "DABC" )     eq "DABCDAD" );
ok( Strings->lexical_min( "YZYYZYZYY", "ZYYZYZYY" ) eq "YZYYZYYZYZYYZYZYY" );
ok( Strings->lexical_min( "ZZYYZZZA",  "ZZYYZZZB" ) eq "ZZYYZZYYZZZAZZZB" );
