# ----------------------------------------------------------------
    use strict;
    use Test::More tests => 7;
    BEGIN { use_ok('Lingua::ZH::Romanize::Cantonese'); };
# ----------------------------------------------------------------
{
    my $roman = Lingua::ZH::Romanize::Cantonese->new();
    ok( ref $roman, "new" );

    ok( $roman->char("a") eq "", "ascii" );
    is( $roman->char("\xE6\xBC\xA2"), "hon", "big5" );
    is( $roman->char("\xE6\xB1\x89"), "hon", "gb2312" );

    my @list = $roman->string("\xE4\xBD\xA0\xE5\xA5\xBD");
    is( $list[0]->[1], "nei", "nei" );
    is( $list[1]->[1], "ho", "ho" );
}
# ----------------------------------------------------------------
;1;
# ----------------------------------------------------------------
