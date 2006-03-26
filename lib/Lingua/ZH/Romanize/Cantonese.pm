=head1 NAME

Lingua::ZH::Romanize::Cantonese - Romanization of Cantonese language

=head1 SYNOPSIS

    use Lingua::ZH::Romanize::Cantonese;

    my $conv = Lingua::ZH::Romanize::Cantonese->new();
    my $roman = $conv->char( $hanji );
    printf( "<ruby><rb>%s</rb><rt>%s</rt></ruby>", $hanji, $roman );

    my @array = $conv->string( $string );
    foreach my $pair ( @array ) {
        my( $raw, $ruby ) = @$pair;
        if ( defined $ruby ) {
            printf( "<ruby><rb>%s</rb><rt>%s</rt></ruby>", $raw, $ruby );
        } else {
            print $raw;
        }
    }

=head1 DESCRIPTION

Cantonese is one of the major dialects of the Chinese language.
The pronounciation

    $conv = Lingua::ZH::Romanize::Cantonese->new();

This constructer methods returns a new object with its dictionary cached.

    $roman = $conv->char( $hanji );

This method returns romanized letters of a Hanji character.
It returns undef when $hanji is not a valid Hanji character.
The argument's encoding must be UTF-8.
Both of Simplified Chinese and Traditional Chinese are allowed.

    @array = $conv->string( $string );

This method returns a array of referenced arrays
which are pairs of a Hanji chacater and its romanized letters.

    $array[0]           # first Chinese character's pair (array)
    $array[1][0]        # secound Chinese character itself
    $array[1][1]        # its romanized letters

=head1 DICTIONARY

This module's Hanji to roman mapping table is based on
both of CTLau.tit and CTLauBig5.tit which were distributed with cxterm.
Original files were prepared by Fung Fung Lee.

Sidney Lau's Cantonese transcription scheme as described in his book
"Elementary Cantonese", The Government Printer, Hong Kong, 1972.

=head1 LICENSE

Any commercial use of the Software requires a license directly from
the author(s).  Please contact the author(s) to negotiate an
appropriate license.  Commercial use includes integration of all or
part of the binary or source code covered by this permission
notices into a product for sale or license to third parties on your
behalf, or distribution of the binary or source code to third
parties that need it to utilize a product sold or licensed on your
behalf.

=head1 MODULE DEPENDENCIES

L<Storable> module is required.

=head1 SEE ALSO

L<Lingua::ZH::Romanize::Pinyin>

http://www.kawa.net/works/ajax/romanize/chinese-e.html

=head1 AUTHOR

Yusuke Kawasaki <u-suke [at] kawa.net>

http://www.kawa.net/

=head1 COPYRIGHT

Copyright (c) 2003-2006 Yusuke Kawasaki. All rights reserved.

=head1 LICENSE

Any commercial use of the Software requires a license directly from
the author(s).  Please contact the author(s) to negotiate an
appropriate license.  Commercial use includes integration of all or
part of the binary or source code covered by this permission
notices into a product for sale or license to third parties on your
behalf, or distribution of the binary or source code to third
parties that need it to utilize a product sold or licensed on your
behalf.

=cut
# ----------------------------------------------------------------
    package Lingua::ZH::Romanize::Cantonese;
    use strict;
    use vars qw( $VERSION @ISA );
    $VERSION = "0.11";
    @ISA = qw( Lingua::ZH::Romanize::Pinyin );
    use Lingua::ZH::Romanize::Pinyin;
# ----------------------------------------------------------------
#   every methods are provided by Lingua::ZH::Romanize::Pinyin!
# ----------------------------------------------------------------
;1;
# ----------------------------------------------------------------
