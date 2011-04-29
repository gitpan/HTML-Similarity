use strict;
use Test::More tests => 3;

use_ok 'HTML::Similarity';

my $hs = new HTML::Similarity;

my $a = "<html><body></body></html>";
my $b = "<html><body><h1>HOMEPAGE</h1><h2>Details</h2></body></html>";
my $score = $hs->calculate_similarity($a, $b);
cmp_ok($score, '>', 0, 'score > 0');
cmp_ok($score, '<', 1, 'score < 1');
