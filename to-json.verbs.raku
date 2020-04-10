# vim-run: raku %


=comment
0 bare
1 gaccented
2 translations_en
3 translations_de
4 aspect
5 partner
6 imperative_sg
7 imperative_pl
8 past_m
9 past_f
10 past_n
11 past_pl
12 presfut_sg1
13 presfut_sg2
14 presfut_sg3
15 presfut_pl1
16 presfut_pl2
17 presfut_pl3

BEGIN say "[";
END say "]";

qq!
\{
  "k": "$_[0]\\n$_[8,9,10,11]\\n$_[12,13,14]",
  "v": "$_[4,2]\\n$_[3]"
\},!.say
for "verbs.csv".IO.lines[1..*]>>.split("\t")
