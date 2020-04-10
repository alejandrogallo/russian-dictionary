# vim-run: raku %

=comment
  0 bare
  1 accented
  2 position
  3 translations_en
  4 translations_de
  5 incomparable
  6 comparative
  7 superlative
  8 short_m
  9 short_f
  10 short_n
  11 short_pl
  12 decl_m_nom
  13 decl_m_gen
  14 decl_m_dat
  15 decl_m_acc
  16 decl_m_inst
  17 decl_m_prep
  18 decl_f_nom
  19 decl_f_gen
  20 decl_f_dat
  21 decl_f_acc
  22 decl_f_inst
  23 decl_f_prep
  24 decl_n_nom
  25 decl_n_gen
  26 decl_n_dat
  27 decl_n_acc
  28 decl_n_inst
  29 decl_n_prep
  30 decl_pl_nom
  31 decl_pl_gen
  32 decl_pl_dat
  33 decl_pl_acc
  34 decl_pl_inst
  35 decl_pl_prep


BEGIN say "[";
END say "]";

qq!\{
  "k": "$_[0]",
  "v": "$_[3,4]"
\},!.say
for "adjectives.csv".IO.lines[1..*]>>.split("\t")
