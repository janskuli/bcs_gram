% -*-trale-prolog-*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   $RCSfile: rules.pl,v $
%%  $Revision: 1.2 $
%%      $Date: 2005/12/21 15:27:09 $
%%     Author: Stefan Mueller (Stefan.Mueller@cl.uni-bremen.de)
%%    Purpose: Eine kleine Spielzeuggrammatik für die Lehre
%%   Language: Trale
%      System: TRALE 2.7.5 (release ) under Sicstus 3.10.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h_arg ## @h_arg((HeadDtr,
		 head:initial:plus),NonHeadDtr)
  ===>
cat> HeadDtr,
cat> NonHeadDtr.

arg_h ## @h_arg((HeadDtr,
		 head:initial:minus),NonHeadDtr)
  ===>
cat> NonHeadDtr,
cat> HeadDtr.


h_adj ## @h_adj(HeadDtr,(NonHeadDtr,
			 head:pre_modifier:minus))
  ===>
cat> HeadDtr,
cat> NonHeadDtr.

adj_h ## @h_adj(HeadDtr,(NonHeadDtr,
			 head:pre_modifier:plus))
  ===>
cat> NonHeadDtr,
cat> HeadDtr.


%h_spr ## @h_spr(HeadDtr,NonHeadDtr)
%  ===>
%cat> HeadDtr,
%cat> NonHeadDtr.

spr_h ## @h_spr(HeadDtr,NonHeadDtr)
  ===>
cat> NonHeadDtr,
cat> HeadDtr.

h_cl ## @h_cl((HeadDtr,head:(verb,initial:plus)),(NonHeadDtr,head:lex:plus))
  ===>
cat> HeadDtr,
cat> NonHeadDtr.
