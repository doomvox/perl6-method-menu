use v6;

use Test;
use method-menu;

# plan 2;

my $test_case = "'use method-menu;' and the 'm' method on Array";
subtest {
  my $report1 = (Array).m;

  my @creatures = <alphan betazoid gammera>;
  my $report2 = @creatures.m;

  my $a_few_dozen = 24;

  my @report1 = $report1.lines;
  my $l1 = @report1.elems;  # 203
  cmp-ok($l1, '>', $a_few_dozen, "report1 shows over $a_few_dozen methods: $l1");

  my @report2 = $report2.lines;
  my $l2 = @report2.elems;  # 203
  cmp-ok($l2, '>', $a_few_dozen, "report2 shows over $a_few_dozen methods: $l2");




}, $test_case;
done-testing();
