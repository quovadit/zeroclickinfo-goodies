#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use DDG::Test::Goodie;

zci answer_type => 'conversions';

ddg_goodie_test(
    [
        'DDG::Goodie::Conversions'
    ],
    
    # @todo: could create a complete test suite for all toUnits->fromUnits

    'convert 5 oz to g'            => test_zci('5 oz is 141.747 g',),
    'convert 1 ton to long ton'    => test_zci('1 ton is 0.893 long ton',),
    'convert 158 ounce to lbm'     => test_zci('158 ounce is 9.875 lbm',),
    'convert 0.111 stone to pound' => test_zci('0.111 stone is 1.554 pound',),
    'mcg to mcg'                   => test_zci('1 mcg is 1.000 mcg',),
    '3 kilogramme to pound'        => test_zci('3 kilogramme is 6.614 pound',),
    '1.3 tonnes to ton'            => test_zci('1.3 tonnes is 1.433 ton',),
    'stone pound'                  => test_zci('1 stone is 14.000 pound',),
    'gram pound convert'           => test_zci('1 gram is 0.002 pound',),
    "convert 1 ton to long ton"    => test_zci('1 ton is 0.893 long ton',),
    'puff toke to kludge'          => undef,
    '2 tons to kg'                 => test_zci('2 tons is 1814.372 kg',),
    '1 ton to kilos'               => test_zci('1 ton is 907.186 kilos',),
    '3.9 oz g'                     => test_zci('3.9 oz is 110.563 g',),
    'convert -9 g to ozs'          => undef,
);

done_testing;
