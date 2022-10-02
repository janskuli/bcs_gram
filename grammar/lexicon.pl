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

der ---> (word,
  head:det,
  subcat:[] ).

dem ---> (word,
  head:det,
  subcat:[] ).

den ---> (word,
  head:det,
  subcat:[] ).

die ---> (word,
  head:det,
  subcat:[] ).

alle ---> (word,
  head:det,
  subcat:[] ).

allen ---> (word,
  head:det,
  subcat:[] ).

aller ---> (word,
  head:det,
  subcat:[] ).

hund ---> (word,
  head:noun,
  subcat:[(head:det) ] ).

hunde ---> (word,
  head:noun,
  subcat:[(head:det) ]  ).

katze ---> (word,
  head:noun,
  subcat:[(head:det) ] ).

schaf ---> (word,
  head:noun,
  subcat:[(head:det) ] ).

bellt ---> (word,
  head:verb,
  subcat:[(head:noun, subcat:[]) ] ).

bellen ---> (word,
  head:verb,
  subcat:[ (head:noun, subcat:[])] ).

jagt ---> (word,
  head:verb,
  subcat:[ (head:noun, subcat:[]), (head:noun, subcat:[]) ] ).

kennt ---> (word,
  head:verb,
  subcat:[ (head:noun, subcat:[]), (head:noun, subcat:[]) ] ).

gibt ---> (word,
  head:verb,
  subcat:[ (head:noun, subcat:[]), (head:noun, subcat:[]), (head:noun, subcat:[]) ] ).

erinnert ---> (word,
  head:verb,
  subcat:[ (head:noun, subcat:[]), (head:noun, subcat:[]), (head:prep, subcat:[]) ] ).

an ---> (word,
  head:prep,
  subcat: [ (head:noun, subcat:[])]).
