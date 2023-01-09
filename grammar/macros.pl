% -*-trale-prolog-*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   $RCSfile: macros.pl,v $
%%  $Revision: 1.2 $
%%      $Date: 2006/02/05 16:20:40 $
%%     Author: Stefan Mueller (Stefan.Mueller@cl.uni-bremen.de)
%%    Purpose: Eine kleine Spielzeuggrammatik für die Lehre
%%   Language: Trale
%      System: TRALE 2.7.5 (release ) under Sicstus 3.10.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


:- multifile ':='/2.

relational_obj(Pred) :=
 (sem:(index:Ind,
       key:(Key,
            pred:Pred,
            arg0:Ind),
       rels:[Key])).

% uninflected determiners
det(Pred) :=
 (word,
  @relational_obj(Pred),
  head:det,
  spr:[],   
  subcat:[]).

% stems that have to undergo inflection
det(DType,Pred) :=
 (stem,
  @relational_obj(Pred),
  head:det,
  spr:[],   
  subcat:[],   
  infl:affix:fk:DType).

% determiners and adjectives
num_case_gen_obj(Num,Case,Gen):=
 (head:agr:(num:Num,
            case:Case,
            gen:Gen)).

det(Num,Case,Gen,DType,Pred):=
  (@det(Pred),
   @num_case_gen_obj(Num,Case,Gen),
   head:agr:dtype:DType).

pronoun(Per,Num,Case,Gen,Pred):=
 (@num_case_gen_obj(Num,Case,Gen),
  @relational_obj(Pred),
  word,
  head:(noun,
        agr:per:Per),
  spr:[],   
  subcat:[]).
%NOUN
noun(Genus,Pred) :=
 (stem,
  @relational_obj(Pred),
  head:(noun,
        agr:(Agr,
             per:third,
	     gen:Genus)),
     spr:[(head:(det,
                 agr:Agr),
             sem:index:Ind)],
     subcat:[],
  sem:index:(Ind,
             object)).
%ADJECTIVE
adj(Pred) :=
 (stem,
  @relational_obj(Pred),
  head:adj,
  spr:[],   
  subcat:[]).

mod_adj(Pred) :=
 (@adj(Pred),
  head:(agr:Agr,
        mod:[(head:(noun,
                    agr:Agr),
              spr:[_],
              sem:index:Ind)],
	pre_modifier:plus),
  sem:index:Ind).

mod_adj(Num,Case,Gen) :=
 (@mod_adj,
  @num_case_gen_lexeme(Num,Case,Gen)).
%PREP
prep :=
 (word,
  head:prep,
  spr:[],   
  subcat:[(head:noun,   
           spr:[])]).

comp_prep :=
 (@prep,
  head:mod:[],
  subcat:[sem:(index:Ind,
               key:Key)],
  sem:(index:Ind,
       key:Key,
       rels:[])).

comp_prep_dat :=
 (@comp_prep,
  subcat:[head:agr:case:dat]).

comp_prep_acc :=
 (@comp_prep,
  subcat:[head:agr:case:acc]).

mod_prep(Pred) :=
 (@prep,
  @relational_obj(Pred),
  head:(mod:[(sem:index:Ind1)],
	pre_modifier:minus),
  subcat:[sem:index:Ind2],
  sem:(index:Ind1,
       key:arg1:Ind2)).

noun_mod_prep(Pred) :=
 (@mod_prep(Pred),
  head:mod:[(head:noun,
             spr:[_])]).

noun_mod_prep_dat(Pred) :=
 (@noun_mod_prep(Pred),
  subcat:[head:agr:case:dat]).

verb_mod_prep(Pred) :=
 (@mod_prep(Pred),
  head:mod:[head:verb]).

verb_mod_prep_dat(Pred) :=
 (@verb_mod_prep(Pred),
  subcat:[head:agr:case:dat]).

%VERB
verb(Pred) :=
 (stem,
  @relational_obj(Pred),
  head:verb,
  spr:[],   
  sem:index:event).


mono_val_verb(Pred) :=
 (@verb(Pred),
  subcat:[(head:(noun,
                 agr:case:nom),
           spr:[],
           sem:index:Arg1)],
   sem:key:arg1:Arg1).

bi_val_verb(Pred) :=
 (@verb(Pred),
  subcat:[(head:(noun,
                 agr:case:nom),
           spr:[],
           sem:index:Arg1),
          (head:noun,
           spr:[],
           sem:index:Arg2)],
   sem:key:(arg1:Arg1,
            arg2:Arg2) ).

acc_bi_val_verb(Pred) :=
 (@bi_val_verb(Pred),
  subcat:[_,
          (head:agr:case:acc)] ).

dat_bi_val_verb(Pred) :=
 (@bi_val_verb(Pred),
  subcat:[_,
          (head:agr:case:dat)] ).

np_pp_verb(Pred) :=
 (@verb(Pred),
  subcat:[ (head:(noun,
                  agr:case:nom),
               spr:[],
            sem:index:Arg1),
           (head:(noun,
                  agr:case:acc),
               spr:[],
            sem:index:Arg2),
           (head:prep,
               subcat:[],
           sem:index:Arg3) ],
   sem:key:(arg1:Arg1,
            arg2:Arg2,
            arg3:Arg3) ).

tri_val_verb(Pred) :=
 (@verb(Pred),
  subcat:[(head:(noun,
                 agr:case:nom),
           spr:[],
           sem:index:Arg1),
          (head:(noun,
                 agr:case:dat),
           spr:[],
           sem:index:Arg2),
          (head:(noun,
                 agr:case:acc),
           spr:[],
           sem:index:Arg3)],
   sem:key:(arg1:Arg1,
            arg2:Arg2,
            arg3:Arg3)).





