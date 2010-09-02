use strict;
use warnings;
use utf8;
use Test::More;
use Data::Koyomi;

is_deeply +Data::Koyomi->日干支(2004,1,1), +{
    '干' => '己',
    '支' => '卯',
};

done_testing;
