% -*-trale-prolog-*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   $RCSfile: lexicon.pl,v $
%%  $Revision: 1.2 $
%%      $Date: 2005/10/20 08:17:02 $
%%     Author: Stefan Mueller (Stefan.Mueller@cl.uni-bremen.de)
%%    Purpose: 
%%   Language: Trale
%      System: TRALE 2.3.7 under Sicstus 3.9.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


das ---> (word,
  head:det,
  subcat:[] ).

vladika ---> (word,
  head:(noun,
        agr:(Agr,
        gender:masc)),
  subcat:[]).

stari ---> (word,
  head:(adj,
        agr:(Agr,gender:masc)),
  mod:[(head:(noun,agr:Agr))],
  subcat:[]).

stara ---> (word,
  head:(adj,
        agr:(Agr,gender:fem)),
  mod:[(head:(noun,agr:Agr))],
  subcat:[]).

bellt ---> (word,
  head:verb,
  subcat:[(head:noun, subcat:[]) ] ).
