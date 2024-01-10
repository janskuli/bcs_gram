:- multifile ':='/2.

noun_infl(UmlautStem-(a_ _),FK-fk_n,GenE-bool,DatE-bool,EvorN-bool,KUmw-bool) :=
  (infl:(umlaut:UmlautStem,
         affix:(fk:FK,
                gen_e:GenE,
                dat_e:DatE,
                e_vor_n:EvorN),
         k_umw:KUmw)).

pl_stem(Stem-(a_ _)) :=
  (infl:umlaut:Stem).

noun_flex_fk(FK) :=
  (infl:affix:fk:FK).

noun_flex_gen_e(Gen) :=
  (infl:affix:gen_e:Gen).

noun_flex_dat_e(Dat) :=
  (infl:affix:dat_e:Dat).

noun_flex_e_vor_n(Dat) :=
  (infl:affix:e_vor_n:Dat).

noun_flex_kumw(KUmw) :=
  (infl:k_umw:KUmw).


conj_stem(Stem-(a_ _)) :=
  (infl:v_stems:conj:Stem).

pres2_stem(Stem-(a_ _)) :=
  (infl:v_stems:pres2:Stem).

part_stem(Stem-(a_ _)) :=
  (infl:v_stems:part:Stem).

past_stem(Stem-(a_ _)) :=
  (infl:v_stems:past:Stem).

vflex_fk(FK-fk_v) :=
  (infl:affix:fk:FK).

vflex_ep(Val-bool) :=
  (infl:affix:ep:Val).

vflex_evp(Val-bool) :=
  (infl:affix:evp:Val).

vflex_epp(Val-bool) :=
  (infl:affix:epp:Val).

vflex_sm(Val-bool) :=
  (infl:affix:sm:Val).

vflex_pl_n(Val-bool) :=
  (infl:affix:pl_n:Val).

vflex_spe(Val-bool) :=
  (infl:affix:spe:Val).

vflex_tm(Val-bool_or_t) :=
  (infl:affix:tm:Val).

vflex_em(Val-bool) :=
  (infl:affix:em:Val).

vflex_bet1(Val-bool) :=
  (infl:bet1:Val).





