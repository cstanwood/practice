#!/usr/bin/perl -w
use strict;
use Test::More tests => 9;
require "angry_professor.pl";

ok( AngryProfessor->isCancelled( ( 4, 3 ), ( -1, 0, 1,  2 ) ) eq 1 );
ok( AngryProfessor->isCancelled( ( 4, 2 ), ( -1, 0, 1,  2 ) ) eq 0 );
ok( AngryProfessor->isCancelled( ( 4, 3 ), ( -1, 0, -1, 2 ) ) eq 0 );
ok( AngryProfessor->isCancelled( ( 4, 4 ), ( -1, 0, 1,  2 ) ) eq 1 );
ok( AngryProfessor->isCancelled( ( 4, 0 ), ( 1,  5, 1, 2 ) ) eq 0 );
ok( AngryProfessor->isCancelled( ( 5, 4 ), ( -1, 0, -1, 2, -5 ) ) eq 0 );
ok( AngryProfessor->isCancelled( ( 5, 4 ), ( -1, 0, 1,  2, 5 ) )  eq 1 );
ok( AngryProfessor->isCancelled( ( 4, 3 ), ( -1, -3, 4, 2 ) )  eq 1 );
ok( AngryProfessor->isCancelled( ( 4, 2 ), ( 0, -1,  2, 1 ) )  eq 0 );
