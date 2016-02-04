package Games::Word::Wordlist::HSK;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use parent qw(Games::Word::Wordlist);
use WordList::ZH::HSK;

sub new {
    bless Games::Word::Wordlist->new ([WordList::ZH::HSK->new->all_words]), shift;
}

1;

# ABSTRACT: HSK words (bridge to WordList::ZH::HSK)

=head1 SYNOPSIS

  use Games::Word::Wordlist::HSK;
  my $wl = Games::Word::Wordlist::HSK->new;
  my $word = $wl->random_word;
  print "We have a word." if $wl->is_word ($word);


=head1 DESCRIPTION


=head1 SEE ALSO

L<WordList::ZH::HSK> (which also comes with per-level word lists as well as
character lists).

L<Games::Word::Wordlist>

=cut
