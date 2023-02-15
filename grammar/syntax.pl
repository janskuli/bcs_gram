% -*-trale-prolog-*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   $RCSfile: syntax.pl,v $
%%  $Revision: 1.1 $
%%      $Date: 2005/12/21 14:36:17 $
%%     Author: Stefan Mueller (Stefan.Mueller@cl.uni-bremen.de)
%%    Purpose: Eine kleine Spielzeuggrammatik für die Lehre
%%   Language: Trale
%      System: TRALE 2.7.5 (release ) under Sicstus 3.10.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- multifile ':='/2.
:- multifile '*>'/2.


binary_headed_phrase *>
  (head_dtr:syntactic_object,
   non_head_dtr:syntactic_object).


headed_phrase *>
(head:Head,
 head_dtr:(head:Head)).


headed_phrase *>
  (sem:(index:Ind,
        key:Key),
   head_dtr:sem:(index:Ind,
		  key:Key)).


binary_headed_phrase *>
  (sem:rels:append(HRels,NHRels),
   head_dtr:sem:rels:HRels,
   non_head_dtr:sem:rels:NHRels).


h_arg(HeadDtr,NonHeadDtr) :=
(subcat:Subcat,
 spr:Spr,
 head:lex:minus,
 head_dtr:(HeadDtr,
       subcat:[NonHeadDtr|Subcat],
	   spr:Spr
 ),
 non_head_dtr:(NonHeadDtr,head:lex:minus)).

h_adj(HeadDtr,NonHeadDtr) :=
(
 subcat:Subcat,
 spr:Spr,
 head:lex:minus,
 marking:Marking,
 head_dtr:(HeadDtr,
   subcat:Subcat,
   spr:Spr
  ),
 non_head_dtr:(NonHeadDtr,
                head:(
                  mod:[HeadDtr],
                  lex:minus
                ),
                marking:Marking,
                subcat:[])
).

h_spr(HeadDtr,NonHeadDtr) :=
(spr:Spr,
 subcat:Subcat,
 head_dtr:(HeadDtr,
           spr:[NonHeadDtr|Spr],
	   subcat:Subcat),
 non_head_dtr:NonHeadDtr).

h_cl(HeadDtr,NonHeadDtr) :=
(subcat:append(Subcat,NHSubcat),
 spr:Spr,
 head_dtr:(HeadDtr,
       subcat:[NonHeadDtr|Subcat],
	   spr:Spr
 ),
 non_head_dtr:(NonHeadDtr,subcat:NHSubcat,spr:[])).

n_bar(HeadDtr) :=
(spr:[],
 subcat:Subcat,
 head_dtr:(HeadDtr,spr:[_],subcat:Subcat)
).

root :=
 (subcat:[],spr:[]).

interrog :=
 (@root).

decl :=
(@root).
