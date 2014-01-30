package DDG::Goodie::WhereAmI;
# ABSTRACT: Display the user's perceived location from GeoIP

use DDG::Goodie;

zci is_cached => 0;

triggers start => 'where am i', 'my location';

primary_example_queries 'Where am I?';
secondary_example_queries 'my location';
description 'display your perceived location';
name 'WhereAmI';
code_url 'https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/lib/DDG/Goodie/WhereAmI.pm';
category 'computing_tools';
topics 'travel';
attribution twitter => 'crazedpsyc',
            cpan    => 'CRZEDPSYC' ;

handle remainder => sub {
    return if length($_) or !$loc or !$loc->city;

    my $answer = 'You appear to be in ' .
        $loc->city.', '.
        ($loc->region_name ? $loc->region_name.', ' : '').
        $loc->country_name.
        ' (Lat:'.$loc->latitude.', Lon:'.$loc->longitude.').'
        ;

    return $answer, html => $answer . '<br/><i>This is the perceived source of your connection. It is never saved here!</i>'
};

1;