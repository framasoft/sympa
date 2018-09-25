#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

use FindBin qw( $Bin );
use lib 't/lib', "$Bin/../src/lib";

use Test::More;

BEGIN {
    package main;
    use_ok('Sympa::Bulk');
}

%Conf::Conf = (
    domain     => 'lists.example.com',  # mandatory
    listmaster => 'dude@example.com',   # mandatory
    lang       => 'en-US',
    db_type    => 'SQLite',
    db_name    => 't/data/sympa.sqlite',
);

done_testing;

__END__
