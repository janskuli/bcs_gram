% -*-trale-prolog-*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   $RCSfile: lexrules.pl,v $
%%  $Revision: 1.1 $
%%      $Date: 2005/12/21 14:36:17 $
%%     Author: Stefan Mueller (Stefan.Mueller@cl.uni-bremen.de)
%%    Purpose: Eine kleine Spielzeuggrammatik für die Lehre
%%   Language: Trale
%      System: TRALE 2.7.5 (release ) under Sicstus 3.10.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- multifile if/2.
:- multifile ':='/2.
:- discontiguous lex_rule/2.

reorder_acc_dat_lr ##
(head:Head,
 subcat:[NP_nom,NP_dat,NP_acc|Rest],
 sem:Sem,
 reorder:minus,
 Dtr)
**>
(head:Head,
 subcat:[NP_nom,NP_acc,NP_dat|Rest],
 sem:Sem,
 reorder:plus,
 dtr:Dtr)
morphs
  X becomes X.


infl_lexical_rule(Dtr) :=
 (head:Head,
  subcat:Subcat,
     sem:Sem,
     spr:Spr,
  dtr:(Dtr,
       head:Head,
       subcat:Subcat,
       sem:Sem,
       spr:Spr)).

%%
%% inflection lexical rules
%%

%%DET
det_infl_lr ##
 (stem,
  head:det,
  infl:affix:(det_i_suffix,
              phon:[(a_ Suff)],
              num:Num,
              gen:Gen,
              dtype:DType,
              case:Case),
  Dtr)
**>
 (@infl_lexical_rule(Dtr),
  head:agr:(num:Num,
            gen:Gen,
            dtype:DType,
            case:Case))
morphs
  X becomes (X,Suff).

%%ADJ
attr_adj_infl_lr ##
(stem,
 head:adj,
 infl:affix:(attr_adj_i_suffix,
             phon:[(a_ Suff)],
             dtype:DType,
             num:Num,
             gen:Gen,
             case:Case),
 Dtr)
**>
(@infl_lexical_rule(Dtr),
  head:agr:(num:Num,
            gen:Gen,
            case:Case,
	    dtype:DType),
  sem:index:(num:Num,
	     gen:Gen))
morphs
  X becomes (X,Suff).

%%NOUN
noun_infl_lr ##
(stem,
 head:noun,
 infl:(umlaut:UmlautStem,
       affix:(Affix,
              noun_i_suffix,
              phon:[(a_ Suff)],
              num:Num,
	      gen:Gen,
              case:Case)),
 Dtr)
**>
( @infl_lexical_rule(Dtr),
  head:agr:(num:Num,
	    gen:Gen,
            case:Case),
  sem:index:(num:Num,
	     gen:Gen))
if
  get_irreg_n_stem(Affix,UmlautStem,(a_ IStem))
morphs
  X becomes (X,Suff) when IStem = none,
  X becomes (IStem,Suff).

%%VERB
verb_infl_lr ##
( stem,
  head:verb,
  infl:(v_stems:VStems,
        affix:(Affix,
               fin_verb_i_suffix,
               phon:[(a_ AffixPhon)],
               per:Per,
               num:Num,
	       temo:Temo)),
  Dtr) 
 **>
( @infl_lexical_rule(Dtr),
  subcat:[(head:agr:(per:Per,
                     num:Num))|_],
  sem:index:temo_intro:Temo)
if (get_irreg_v_stem(Affix,VStems,a_ IStem))
morphs
  X becomes (X,AffixPhon) when IStem = none,
  X becomes (IStem,AffixPhon).





get_irreg_v_stem((Affix,
                  phon:Phon),VStems,IrregStem) if
  when(Phon=(e_list;ne_list)
       ,undelayed_get_irreg_v_stem(Affix,VStems,IrregStem)).


undelayed_get_irreg_v_stem((temo:pres_ind_conj),                (pres2:(a_ none)),     (a_ none    ))  if !,true.

% ich fange, du fängst, er fängt
% ich habe, du hast, er hat
undelayed_get_irreg_v_stem((fk:(v_strong;mixed;v_weak),
                            temo:pres_ind, per:second_or_third,num:sg),(pres2:(a_ Pres2Stem)),(a_ Pres2Stem)) if !,true.


undelayed_get_irreg_v_stem((fk:(v_strong;mixed;v_weak),
                            temo:pres_imp),                     (imp_st:(a_ Pres2Stem)),(a_ Pres2Stem)) if !,true.

% Ich darf, du darfst, er darf, wir dürfen, ihr dürft, sie dürfen
% the irregular stem in sg:
undelayed_get_irreg_v_stem((fk:modal,
                            temo:pres_ind,
                            num:sg),                            (pres2:(a_ Pres2Stem)),(a_ Pres2Stem)) if !,true.


undelayed_get_irreg_v_stem((temo:pres_conj,per:second_or_third,num:sg),_,     (a_ none    ))  if !,true.

% ich fange, ich habe
undelayed_get_irreg_v_stem((fk:(v_strong;mixed),
                            temo:pres_ind_conj,per:first,num:sg),      _,                     (a_ none    ))  if !,true.


% versuchtest
undelayed_get_irreg_v_stem((temo:past_ind_conj),                (past:(a_ none),
                                                                 conj:(a_ none)),      (a_ none    ))  if !,true.

% ich fing, ..., ich durfte, ...
undelayed_get_irreg_v_stem((temo:past_ind),                     (past:(a_ PastStem)),  (a_ PastStem))  if !,true.

% If a conj stem is definied, take it, otherwise return the past stem.
% kommen, kam, käme
% fangen, fing, finge
undelayed_get_irreg_v_stem((temo:past_conj),                    (conj:(a_ ConjStem)),  (a_ ConjStem))  if !,prolog(ConjStem\=none).
undelayed_get_irreg_v_stem((temo:past_conj),                    (past:(a_ ConjStem)),  (a_ ConjStem))  if !,prolog(ConjStem=none).


undelayed_get_irreg_v_stem(_,          _,                     (a_ none    ))  if true.


get_irreg_n_stem((num:pl),(a_ UmlautStem),  (a_ UmlautStem))  if !.
get_irreg_n_stem(_,_,_) if true.
