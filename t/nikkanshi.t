use strict;
use warnings;
use utf8;
use Test::More;
use Data::Koyomi::Nikkanshi;

is_deeply +Data::Koyomi::Nikkanshi::process(2004,1,1), +{
    kan => '己',
    shi => '卯',
};

done_testing;
