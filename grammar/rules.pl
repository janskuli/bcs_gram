% -*-trale-prolog-*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   $RCSfile: rules.pl,v $
%%  $Revision: 1.4 $
%%      $Date: 2005/10/20 08:17:02 $
%%     Author: Stefan Mueller (Stefan.Mueller@cl.uni-bremen.de)
%%    Purpose: 
%%   Language: Trale
%      System: TRALE 2.3.7 under Sicstus 3.9.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


h_arg rule
(head:Head,
 subcat:Subcat)
  ===>
cat> (head:Head,
      subcat:[NonheadDtr|Subcat]),
cat> NonheadDtr.

arg_h rule
(head:Head,
 subcat:Subcat)
  ===>
cat> NonheadDtr,
cat> (head:Head,
      subcat:[NonheadDtr|Subcat]).

adj_h rule
(head:Head,
 subcat:Subcat,
 spr:Spr)
  ===>
cat> (head:(NonheadDtr,mod:[HeadDtr]),subcat:[]),
cat> (HeadDtr,
      head:Head,
      spr:Spr,
      subcat:Subcat).

spr_h rule
(spr:Spr,
 head:Head,
 subcat:Subcat)
   ===>
cat> NonHeadDtr,
cat> (HeadDtr,
      head:Head,
      spr:[NonHeadDtr|Spr],
      subcat:Subcat).
