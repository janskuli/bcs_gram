% -*-trale-prolog-*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   $RCSfile: test_items.pl,v $
%%  $Revision: 1.2 $
%%      $Date: 2005/10/20 08:17:02 $
%%     Author: Stefan Mueller (Stefan.Mueller@cl.uni-bremen.de)
%%    Purpose: 
%%   Language: Trale
%      System: TRALE 2.3.7 under Sicstus 3.9.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t(1,"stari vladika",@root,1,attributive).%Semantic agreement singular
t(2,"stara vladika",@root,0,attributive).
t(3,"stare vladike",@root,1,attributive).%Grammatical agreement plural
t(4,"stari vladike",@root,1,attributive).%Semantic agreement plural
t(5,"oni vladike",@root,1,determinative).%Semantic agreement plural
t(6,"one vladike",@root,1,determinative).%Grammatical agreement plural
t(7,"oni vladika",@root,0,determinative).
t(8,"one vladika",@root,0,determinative).
t(9,"oni stare vladike",@root,1,determinative-attributive).%One switch | A-N index FEM | D-AP concord MASC
t(10,"one stari vladike",@root,0,determinative-attributive).%Two switches 
t(11,"oni stari vladike",@root,1,determinative-attributive).%One switch| index | MASC
t(12,"one stare vladike",@root,1,determinative-attributive).%No switch| concord agreement | FEM
