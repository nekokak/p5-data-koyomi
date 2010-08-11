package Data::Koyomi::Nikkanshi;
use strict;
use warnings;
use utf8;

my @KAN = qw/甲 乙 丙 丁 戊 己 庚 辛 壬 癸/;
my @SHI = qw/寅 卯 辰 巳 午 未 申 酉 戌 亥 子 丑/;

# see also) http://ja.wikipedia.org/wiki/%E3%83%A6%E3%83%AA%E3%82%A6%E3%82%B9%E9%80%9A%E6%97%A5

sub process {
    my ($y, $m, $d) = @_;

    if ($m == 1 or $m == 2) {
        $y = $y-1;
        $m = 12+$m;
    }

    my $mjd = int(365.25*$y) + int($y/400) - int($y/100) + int(30.59 * ($m - 2)) + $d - 678912;
    my $kan = $mjd % 10;
    my $shi = $mjd % 12;

    return +{
        kan => $KAN[$kan],
        shi => $SHI[$shi],
    };
}

1;

